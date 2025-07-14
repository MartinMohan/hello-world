package main

import (
	"flag"
	"fmt"
	"hello-world/pkg/greet"
	"os"
)

var version = "0.1.0" // This will be set during build

func main() {
	showVersion := flag.Bool("version", false, "Show version information")
	flag.Parse()

	if *showVersion {
		fmt.Printf("hello-world version %s\n", version)
		os.Exit(0)
	}

	fmt.Println(greet.Message())
}
