package sqlbuilder

import "github.com/xwb1989/sqlparser"

func IsSQLValid(sql string) (bool, error) {
	_, err := sqlparser.Parse(sql)
	if err != nil {
		return false, err
	}
	return true, nil
}
