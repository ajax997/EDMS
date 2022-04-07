package utils

func GetSliceOfKeysAndValuesFromMap(stringMap map[string]string) ([]string, []string) {
	keys := make([]string, len(stringMap))
	values := make([]string, len(stringMap))
	i := 0
	for k, v := range stringMap {
		keys[i] = k
		values[i] = v
		i++
	}
	return keys, values
}
