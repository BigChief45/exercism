// Package acronym contains functions for working with acronyms
package acronym

import (
	"bytes"
	"strings"
)

// Abbreviate generates an acronym from a long name
func Abbreviate(s string) string {
	var acronym bytes.Buffer

	splitted := strings.Split(strings.Replace(s, "-", " ", -1), " ")
	for _, word := range splitted {
		if len(word) > 0 {
			char := string(word[0])
			acronym.WriteString(strings.ToUpper(char))
		}
	}

	return acronym.String()
}
