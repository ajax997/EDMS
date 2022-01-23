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
	fmt.Println(connectionString)
	db, err := sql.Open("mysql", connectionString)
	if err != nil {
		panic(err.Error())
	}

	return db
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
