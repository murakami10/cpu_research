package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"math/rand"
	"net/http"
)

func stressCPU(c echo.Context) error {

	var ans int
	r := rand.Intn(1000)
	for i := 0; i < 1000000; i++ {
		ans += r
		fmt.Print(ans)
	}

	resp := fmt.Sprintf("Done! %d", ans)

	return c.String(http.StatusOK, resp)
}

func main() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", stressCPU)
	e.Logger.Fatal(e.Start(":80"))
}
