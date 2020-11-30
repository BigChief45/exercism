package accumulate

// Accumulate given a collection and an operation to perform on each element of
// the collection, returns a new collection containing the result of applying
// that operation to each element of the input collection.
func Accumulate(collection []string, operation func(string) string) []string {
	newCollection := make([]string, len(collection))

	for i, element := range collection {
		val := operation(element)
		newCollection[i] = val
	}

	return newCollection
}
