package main

import (
	"fmt"
	"log"
	"os"
	"time"
)

func main() {
	for {
		fmt.Println("Everything is working fine. Its version 0.0.5")
		log.Println("Have a nice day, 0.0.5")
		time.Sleep(time.Second * 60)
	}
	os.Exit(0)
}
