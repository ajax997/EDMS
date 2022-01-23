package controllers

import (
	"database/sql"
	"encoding/json"
	"fmt"
)

type BaseHandler struct {
	db *sql.DB
}

// NewBaseHandler returns a new BaseHandler
func NewBaseHandler(db *sql.DB) *BaseHandler {
	return &BaseHandler{
		db: db,
	}
}

func (h *BaseHandler) ExecuteSilentSQL(sqlStatement string) bool {
	_, err := h.db.Exec(sqlStatement)
	if err != nil {
		return false
	}
	return true
}

func (h *BaseHandler) ExecuteSQLJSON(sqlStatement string) string {
	rows, err := h.db.Query(sqlStatement)
	if err != nil {
		panic(err.Error())
	}
	columns, errRow := rows.Columns()
	fmt.Println(columns)
	if errRow != nil {
		panic(errRow.Error())
	}
	if err != nil {
		panic(err.Error())
	}
	count := len(columns)
	tableData := make([]map[string]interface{}, 0)
	values := make([]interface{}, count)
	valuePtrs := make([]interface{}, count)
	for rows.Next() {
		for i := 0; i < count; i++ {
			valuePtrs[i] = &values[i]
		}
		rows.Scan(valuePtrs...)
		entry := make(map[string]interface{})
		for i, col := range columns {
			var v interface{}
			val := values[i]
			b, ok := val.([]byte)
			if ok {
				v = string(b)
			} else {
				v = val
			}
			entry[col] = v
		}
		tableData = append(tableData, entry)
	}
	jsonData, err := json.Marshal(tableData)
	if err != nil {
		panic(err)
	}
	fmt.Println(string(jsonData))
	return ""
}
