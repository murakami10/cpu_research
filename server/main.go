package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"math/rand"
	"net/http"
	"time"
)

func stressCPU(c echo.Context) error {

	var ans int
	r := rand.Intn(1000)
	loop := 10000000
	for i := 0; i < loop; i++ {
		ans += r
		if  i == loop/2 {
			fmt.Print(ans)
		}
	}

	resp := fmt.Sprintf("Done! %d", ans)

	return c.String(http.StatusOK, resp)
}

func main() {
	e := echo.New()

	rand.Seed(time.Now().UnixNano())
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", stressCPU)
	e.Logger.Fatal(e.Start(":80"))
}
