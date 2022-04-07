package sqlbuilder

import (
	"fmt"
	"github.com/ajax997/EDMS/utils"
	"strings"
)

func GenerateQueryGetAllTable() string {
	sqlStatement := fmt.Sprintf("SELECT * FROM ootb_system_table WHERE backend_table = 0")
	return sqlStatement
}

//func GenerateDefaultColumnsInsertStatement(tableID string, columnTable string, module string, configTable bool, dataTable bool) (string, error) {
//	columnList := []string{"uuid", "module", "belongs_to", "column_type", "column_display_name", "column_actual_name", "reference_to", "system_column", "auto_column"}
//	insertColumnStatement := fmt.Sprintf("START TRANSACTION; INSERT INTO %s (%s) VALUES", columnTable, strings.Join(columnList[:], ","))
//	defaultColumns := make([]string, 0)
//
//	defaultColumns = append(defaultColumns, fmt.Sprintf("('%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v')",
//		NewUUID(), module, tableID, "cc0d3730a4b3325898cf8ac1f98fd1f0", "Record Created On", "record_created_on", "", '0', "1"))
//
//	defaultColumns = append(defaultColumns, fmt.Sprintf("('%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v')",
//		NewUUID(), module, tableID, "cc0d3730a4b3325898cf8ac1f98fd1f0", "Record Last Updated On", "record_last_updated_on", "", '0', "1"))
//
//	defaultColumns = append(defaultColumns, fmt.Sprintf("('%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v')",
//		NewUUID(), module, tableID, "cc0d3730a4b3325898cf8ac1f98fd1f0", "Record Created By", "record_created_by", "", '0', "1"))
//
//	defaultColumns = append(defaultColumns, fmt.Sprintf("('%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v')",
//		NewUUID(), module, tableID, "cc0d3730a4b3325898cf8ac1f98fd1f0", "Record Last Updated By", "record_last_updated_by", "", '0', "1"))
//
//	defaultColumns = append(defaultColumns, fmt.Sprintf("('%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v')",
//		NewUUID(), module, tableID, "cc0d3730a4b3325898cf8ac1f98fd1f0", "Record Created On", "cc0d3730a4b3325898cf8ac1f98fd1f0", "", '0', "1"))
//
//	defaultColumns = append(defaultColumns, fmt.Sprintf("('%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v', '%v')",
//		NewUUID(), module, tableID, "cc0d3730a4b3325898cf8ac1f98fd1f0", "Record Created On", "cc0d3730a4b3325898cf8ac1f98fd1f0", "", '0', "1"))
//
//
//	return insertColumnStatement, nil
//}

func GenerateSQLStatementNewDatabaseColumn(columnActualName, table, dataType string, unique bool) string {
	sqlStatement := fmt.Sprintf("ALTER TABLE %v ADD %v %v NULL; ", table, columnActualName, dataType)
	if unique {
		sqlStatement += fmt.Sprintf("CREATE UNIQUE INDEX %v_%v_uindex ON %v (%v);", table, columnActualName, table, columnActualName)
	}
	if val, err := IsSQLValid(sqlStatement); val {
		return sqlStatement
	} else {
		panic(err.Error())
	}
}

func GenerateSQLStatementNewSystemColumn() string {
	sqlStatement := ""
	//TODO
	return sqlStatement
}

func GenerateSQLStatementNewWrapper(columnTable string, insertInformation map[string]string) string {
	columns, values := utils.GetSliceOfKeysAndValuesFromMap(insertInformation)
	//TODO
	sqlStatement := fmt.Sprintf("INSERT INTO %v (%v) VALUES ('%v')", columnTable, strings.Join(columns[:], ","), strings.Join(values[:], "','"))

	if val, err := IsSQLValid(sqlStatement); val {
		return sqlStatement
	} else {
		panic(err.Error())
	}
}
