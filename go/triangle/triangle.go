// Package triangle contains functions for working with triangles
package triangle

import "math"

type Kind int

const (
	NaT = iota // not a triangle
	Equ = iota // equilateral
	Iso = iota // isosceles
	Sca = iota // scalene
)

// KindFromSides determines if a triangle is equilateral, isosceles, or scalene
func KindFromSides(a, b, c float64) Kind {
	var k Kind

	if !isTriangle(a, b, c) {
		k = NaT
	} else {
		if a == b && b == c {
			k = Equ
		} else if a == b || a == c || b == c {
			k = Iso
		} else {
			k = Sca
		}
	}

	return k
}

// isTriangle determines if the shape is a triangles
func isTriangle(a, b, c float64) bool {
	// Check NaNs
	if math.IsNaN(a) || math.IsNaN(b) || math.IsNaN(c) {
		return false
	}

	// Check infinities
	if math.IsInf(a, 0) || math.IsInf(b, 0) || math.IsInf(c, 0) {
		return false
	}

	if a <= 0 || b <= 0 || c <= 0 {
		return false
	}

	// Sum of the lengths of any two sides must be greater than or equal to the
	// length of the third side
	if a+b < c || a+c < b || b+c < a {
		return false
	}

	return true
}
