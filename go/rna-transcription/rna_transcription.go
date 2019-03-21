package strand

import "bytes"

var nucleotideMappings = map[string]string{
	"G": "C",
	"C": "G",
	"T": "A",
	"A": "U",
}

func ToRNA(dna string) string {
	// In Go 1.10+ you can use strings.Builder instead
	var rna bytes.Buffer

	for _, nucleotide := range dna {
		rna.WriteString(nucleotideMappings[string(nucleotide)])
	}

	return rna.String()
}
