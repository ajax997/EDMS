package database

import (
	"database/sql"
	"fmt"
	_ "github.com/go-sql-driver/mysql"
	"os"
)

func ConnectDB() *sql.DB {
	connectionString := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s", os.Getenv("DB_USERNAME"),
		os.Getenv("DB_PASSWORD"),
		os.Getenv("DB_URI"),
		os.Getenv("DB_PORT"),
		os.Getenv("DB_SCHEME_NAME"))
	db, err := sql.Open("mysql", connectionString)
	if err != nil {
		panic(err.Error())
	}

	return db
}
func LoadVariables() map[string]string {
	var vars = map[string]string{}
	vars["COLUMN_TABLE"] = os.Getenv("VAR_COLUMN_TABLE")
	vars["TABLE_TABLE"] = os.Getenv("VAR_SYSTEM_TABLE")
	vars["COLUMN_WRAPPER"] = os.Getenv("VAR_COLUMN_WRAPPER")
	return vars

}

// BaseHandler will hold everything that controller needs
type BaseHandler struct {
	db *sql.DB
}

// NewDataBaseHandler returns a new BaseHandler
func NewDataBaseHandler(db *sql.DB) *BaseHandler {
	return &BaseHandler{
		db: db,
	}
}
