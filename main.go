// main.go

package main

import (
	"github.com/ajax997/EDMS/controllers"
	"github.com/ajax997/EDMS/database"
	"github.com/ajax997/EDMS/session"
	"os"

	"github.com/gorilla/mux"
	"github.com/joho/godotenv"
	"net/http"
)

func initialTableRoutes(h *controllers.BaseHandler, router *mux.Router) {
	router.HandleFunc("/api/v1/records/{table}", h.GetRecordsFromTable)
	router.HandleFunc("/api/v1/records/{table}/{record}", h.GetRecordDetail)
	router.HandleFunc("/api/v1/table/{table}/new", h.InsertNewRecord)
}

func initialInternalRoutes(h *controllers.BaseHandler, router *mux.Router) {
	router.HandleFunc("/api/v1/internal/table/getalltable", h.GetAllTable)
	router.HandleFunc("/api/v1/internal/table/newcolumn", h.CreateNewColumn)
}

func initiateAuthRoutes(h *controllers.BaseHandler, router *mux.Router) {
	router.HandleFunc("/api/v1/auth/login", h.AuthenticateLogin)
	router.HandleFunc("/api/v1/auth/logout", h.AuthenticateLogout)
}

func main() {
	err := godotenv.Load()
	if err != nil {
		panic(err.Error())
	}

	db := database.ConnectDB()
	vars := database.LoadVariables()
	sessionManager, establishSessionError := session.NewMySQLStore(db, "ootb_user_session", "/s", 3600, []byte(os.Getenv("SESSION_SECRET_KEY")))
	if establishSessionError != nil {
		panic(establishSessionError.Error())
	}
	h := controllers.NewBaseHandler(db, vars, sessionManager)
	router := mux.NewRouter()

	initialTableRoutes(h, router)
	initialInternalRoutes(h, router)

	errStartListener := http.ListenAndServe(":8000", router)
	if errStartListener != nil {
		panic(err.Error())
	}
}
