package raindrops

import "strconv"

// Convert converts a number to a string
func Convert(n int) string {
	s := ""

	if n%3 == 0 {
		s = s + "Pling"
	}

	if n%5 == 0 {
		s = s + "Plang"
	}

	if n%7 == 0 {
		s = s + "Plong"
	}

	if s == "" {
		s = strconv.Itoa(n)
	}

	return s
}
