package main

import (
	"flag"
	"fmt"
)

func health() string {
	return "ok"
}

func main() {
	smoke := flag.Bool("smoke", false, "run smoke check")
	flag.Parse()

	if *smoke {
		if health() != "ok" {
			panic("Go smoke check failed")
		}
		fmt.Println("Go starter smoke: ok")
		return
	}

	fmt.Println("Go service starter ready")
}
