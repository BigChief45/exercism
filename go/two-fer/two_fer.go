package twofer

import "fmt"

func ShareWith(name string) string {
	with := ""

	if len(name) == 0 {
		with = "you"
	} else {
		with = name
	}

	return fmt.Sprintf("One for %s, one for me.", with)
}
