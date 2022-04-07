package controllers

import "net/http"

func (h *BaseHandler) AuthenticateLogin(writer http.ResponseWriter, request *http.Request) {
	//Authentication code here
	session, getSessionError := h.session.Get(request, "session_key")
	if getSessionError != nil {
		panic(getSessionError.Error())
	}
	if _, ok := session.Values["AUTHENTICATED"]; ok {

	}

}

func (h *BaseHandler) AuthenticateLogout(writer http.ResponseWriter, request *http.Request) {

}
