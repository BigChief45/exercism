package space

type Planet string

func Age(seconds float64, planet Planet) float64 {
	earthYears := seconds / 60 / 60 / 24 / float64(365.25)

	agesInPlanets := map[Planet]float64{
		"Earth":   earthYears,
		"Mercury": earthYears / 0.2408467,
		"Venus":   earthYears / 0.61519726,
		"Mars":    earthYears / 1.8808158,
		"Jupiter": earthYears / 11.862615,
		"Saturn":  earthYears / 29.447498,
		"Uranus":  earthYears / 84.016846,
		"Neptune": earthYears / 164.79132,
	}

	return agesInPlanets[planet]
}
