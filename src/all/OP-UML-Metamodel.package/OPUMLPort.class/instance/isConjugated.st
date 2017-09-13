accessing
isConjugated
	"Specifies the way that the provided and required Interfaces are derived from the Port’s Type."
	^ isConjugated ifNil: [ isConjugated := false ]