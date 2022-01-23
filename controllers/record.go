package controllers

import (
	"fmt"
	"github.com/gorilla/mux"
	"net/http"
)

func (h *BaseHandler) GetRecordsFromTable(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	fmt.Println(vars["table"])
	fmt.Println(r.URL.Query().Get("id"))
	h.ExecuteSQLJSON("SELECT * from `ootb_system_table_column_type`")
}

func (h *BaseHandler) GetRecordDetail(w http.ResponseWriter, r *http.Request) {

}
