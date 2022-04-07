package controllers

import (
	"encoding/json"
	"fmt"
	"github.com/ajax997/EDMS/sqlbuilder"
	"github.com/ajax997/EDMS/utils"
	"github.com/gorilla/mux"
	"net/http"
)

func (h *BaseHandler) GetRecordsFromTable(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	fmt.Println(vars["table"])
	fmt.Println(r.URL.Query().Get("id"))
	h.ExecuteSQLJSON("SELECT * from `ootb_system_table_column_type`")
}

func (h *BaseHandler) getListAllColumn(table string) []map[string]interface{} {
	sqlStatement := sqlbuilder.GenerateQueryOnASingleTable("ootb_system_table_column", []string{"column_actual_name", "column_type"},
		fmt.Sprintf("belongs_to='%s'", table), "", sqlbuilder.NONE, "", "")

	fmt.Println(sqlStatement)
	return h.ExecuteSQLJSON(sqlStatement)

}

func (h *BaseHandler) getListColumnOfAnUser(table string, userUuid string) {

}

func (h *BaseHandler) GetRecordDetail(w http.ResponseWriter, r *http.Request) {

}

func (h *BaseHandler) InsertNewRecord(w http.ResponseWriter, r *http.Request) {
	params := mux.Vars(r)
	table := params["table"]

	columns := h.getListAllColumn(table)
	columnList := make([]string, 0)

	for _, c := range columns {
		for k, v := range c {
			if k == "column_actual_name" {
				columnList = append(columnList, v.(string))
			}
		}
	}
	fmt.Printf("%s", columnList)

	jsonData, err := json.Marshal(columns)
	//Ignore
	_ = jsonData
	if err != nil {
		panic(err.Error())
	}

	fieldJsonMap := utils.ExtractPOSTRequestBody(r)

	newRecordColumn := make([]string, 0)
	newRecordValue := make([]string, 0)
	for inputKey, inputValue := range fieldJsonMap {
		if utils.StringArrayIndexOf(inputKey, columnList) != -1 {
			newRecordColumn = append(newRecordColumn, inputKey)
			newRecordValue = append(newRecordValue, fmt.Sprintf("'%s'", inputValue.(string)))
		}
	}
	insertStatement, newRecordUUID := sqlbuilder.GenerateInsertStatement(table, newRecordColumn, newRecordValue)
	fmt.Println(insertStatement)

	w.Header().Add("Content-Type", "application/json")
	w.Write([]byte(newRecordUUID))
	w.WriteHeader(200)
}
