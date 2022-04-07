package validatorengine

import "github.com/DataDog/go-python3"

func init() {
	defer python3.Py_Finalize()
	python3.Py_Initialize()
	python3.PyRun_SimpleString("print('hello world')")
}
