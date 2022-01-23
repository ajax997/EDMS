// main.go

package main

import (
	"github.com/ajax997/EDMS/controllers"
	"github.com/ajax997/EDMS/database"

	"github.com/gorilla/mux"
	"github.com/joho/godotenv"
	"net/http"
)

func main() {
	err := godotenv.Load()
	if err != nil {
		panic(err.Error())
	}

	db := database.ConnectDB()
	h := controllers.NewBaseHandler(db)
	router := mux.NewRouter()

	router.HandleFunc("/api/v1/records/{table}", h.GetRecordsFromTable)
	router.HandleFunc("/api/v1/records/{table}/{record}", h.GetRecordDetail)

	errStartListener := http.ListenAndServe(":8000", router)
	if errStartListener != nil {
		panic(err.Error())
	}

}
