accessing
next: anInteger 
	"Answer up to anInteger elements of my collection. Overridden for efficiency."

	| answer endPosition |
	endPosition := position + anInteger min: readLimit.
	answer := collection copyFrom: position + 1 to: endPosition.
	position := endPosition.
	^ answer