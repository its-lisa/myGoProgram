package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"rsc.io/quote"
)

func main() {
	handleRequests()
}

func handleRequests() {
	r := gin.Default()
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "pong",
		})
	})

	r.GET("/", func(context *gin.Context) {
		context.JSON(http.StatusOK, gin.H{"Message": getMessage()})
	})

	r.Run(":8080")
}

func getMessage() string {
	return "Here is the quote I am going to test: " + quote.Glass()
}

//test
