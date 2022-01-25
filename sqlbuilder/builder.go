package sqlbuilder

import (
	"fmt"
	"strings"
)

func QueryOnTable(table string, condition string, columns []string, involvesTable []string) string {
	colonSeparatedColumnList := strings.Join(columns[:], ",")
	queryStatementString := fmt.Sprintf("SELECT %s FROM  ")
	fmt.Println(colonSeparatedColumnList)
	fmt.Println(queryStatementString)
	return ""
}
