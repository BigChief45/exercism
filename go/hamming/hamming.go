// Package hamming provides functions for calculating Hamming Distance
package hamming

import "errors"

// Distance calculates the Hamming Distance between two DNA strands
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, errors.New("Invalid DNA strands")
	}

	hammingDistance := 0
	for i := 0; i < len(a); i++ {
		if string(a[i]) != string(b[i]) {
			hammingDistance += 1
		}
	}

	return hammingDistance, nil
}
