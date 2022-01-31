package sqlbuilder

import (
	"fmt"
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
