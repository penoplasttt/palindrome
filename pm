package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	flag := false

	text, _ := bufio.NewReader(os.Stdin).ReadString('\n')
	text = strings.TrimSuffix(text, "\n")

	str := strings.Join(strings.Split(text, " "), "")

	runeTxt := []rune(str)

	count := len(runeTxt) - 2

	for i := 0; i <= (len(runeTxt)-1)/2; i++ {

		if runeTxt[i] == runeTxt[count] {
			flag = true
		} else {
			flag = false
			break
		}
		count--

	}

	if flag == true {
		fmt.Print("Палиндром")
	} else {
		fmt.Print("Нет")
	}

}
