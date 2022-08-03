package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"math/rand"
	"net/http"
	"time"
)

func randomPlus() int {

	var ans int
	for i := 0; i < 1000; i++ {
		r := rand.Intn(1000)

		ans += r

		if ans > 500 {
			ans = 0
		}
	}

	return ans
}

func stressCPU(c echo.Context) error {

	var ans int

	for i := 0; i < 1000; i++ {
		ans += randomPlus()

		if ans > 1000000 {
			ans = 0
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
	e.Logger.Fatal(e.Start(":12345"))
}
