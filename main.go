package main

import (
	"github.com/gorilla/handlers"
	"log"
	"net/http"
	"os"
)

func main() {
	www := os.Getenv("WWW")
	if www == "" {
		log.Fatal("unable to find WWW as an environment variable")
	}
	logAndServe := handlers.LoggingHandler(os.Stdout, http.FileServer((http.Dir(www))))
	log.Fatal(http.ListenAndServe(":8080", logAndServe))
}
