package utils

import (
	"encoding/json"
	"io"
	"net/http"
)

func ExtractPOSTRequestBody(r *http.Request) map[string]interface{} {
	fieldJsonMap := make(map[string]interface{}, 0)
	bodyBytes, err := io.ReadAll(r.Body)
	if err != nil {
		panic(err.Error())
	}
	errMarshal := json.Unmarshal(bodyBytes, &fieldJsonMap)
	if err != nil {
		panic(errMarshal.Error())
	}
	return fieldJsonMap
}
