package main

import (
	"fmt"
	"math/rand"
	"net/http"
	"time"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func randomPlus() int {
	rand.Seed(time.Now().UnixNano())

	var ans int
	for i := 0; i < 1000; i++ {
		r := rand.Intn(1000)

		ans += r

		r2 := rand.Intn(10000)
		if ans > r2 {
			ans = 0
		}
	}

	return ans
}

func stressCPU(c echo.Context) error {

	var ans int

	for i := 0; i < 1000; i++ {
		ans += randomPlus()

		if ans > 10000 {
			ans = 0
		}
	}

	resp := fmt.Sprintf("Done! %d", ans)

	return c.String(http.StatusOK, resp)
}

func main() {
	e := echo.New()

	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	e.GET("/", stressCPU)
	e.Logger.Fatal(e.Start(":12345"))
}
