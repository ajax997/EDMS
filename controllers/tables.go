package controllers

import (
	"encoding/json"
	"github.com/ajax997/EDMS/sqlbuilder"
	"net/http"
)

func (h *BaseHandler) GetAllTable(w http.ResponseWriter, r *http.Request) {
	generatedSQL := sqlbuilder.GenerateQueryGetAllTable()
	JSON := h.ExecuteSQLJSON(generatedSQL)

	jsonData, err := json.Marshal(JSON)
	if err != nil {
		panic(err)
	}
	w.Header().Add("Content-Type", "application/json")
	w.Write(jsonData)
	w.WriteHeader(200)
}

func (h *BaseHandler) generateDefaultColumnsForTable(tableID string) {

}
