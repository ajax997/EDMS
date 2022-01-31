package sqlbuilder

import (
	"crypto/md5"
	"fmt"
	"github.com/google/uuid"
	"strings"
)

func NewUUID() string {
	return fmt.Sprintf("%x", md5.Sum(uuid.New().NodeID()))
}

type SortingOption string

const (
	NONE SortingOption = ""
	ASC  SortingOption = "ASC"
	DESC SortingOption = "DESC"
)

func QueryOnTable(table string, condition string, columns []string, involvesTable []string) string {
	colonSeparatedColumnList := strings.Join(columns[:], ",")
	queryStatementString := fmt.Sprintf("SELECT %s FROM  ")
	fmt.Println(colonSeparatedColumnList)
	fmt.Println(queryStatementString)
	return ""
}

func GenerateQueryOnASingleTable(table string, listOfReturnedColumns []string, condition string, orderByColumn string, sortingOption SortingOption, groupByColumn string, groupByCriteria string) string {
	colonSeparatedColumnList := strings.Join(listOfReturnedColumns[:], ",")
	SQLQueryStatement := fmt.Sprintf("SELECT %s FROM %s WHERE %s", colonSeparatedColumnList, table, condition)
	if orderByColumn != "" {
		SQLQueryStatement += fmt.Sprintf(" ORDER BY %s", orderByColumn)
	}
	if sortingOption != NONE {
		SQLQueryStatement += fmt.Sprintf("%v", sortingOption)
	}
	if groupByColumn != "" {
		SQLQueryStatement += fmt.Sprintf(" GROUP BY %s", orderByColumn)
	}

	SQLQueryStatement += ";"
	return SQLQueryStatement
}

func GenerateInsertStatement(table string, columnList []string, valueList []string) (string, string) {
	newRecordUUID := NewUUID()
	SQLInsertStatement := fmt.Sprintf("INSERT INTO %s (uuid,%s) VALUES (%s,%s);", table,
		strings.Join(columnList, ","), fmt.Sprintf("'%s'", newRecordUUID), strings.Join(valueList, ","))
	return SQLInsertStatement, newRecordUUID
}
