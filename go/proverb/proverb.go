package proverb

import "fmt"

func Proverb(rhyme []string) []string {
	var proverb []string

	for index, word := range rhyme {
		var line string

		if index == len(rhyme)-1 {
			line = fmt.Sprintf("And all for the want of a %s.", string(rhyme[0]))
		} else {
			next := string(rhyme[index+1])
			line = fmt.Sprintf("For want of a %s the %s was lost.", string(word), next)
		}

		proverb = append(proverb, line)
	}

	return proverb
}
