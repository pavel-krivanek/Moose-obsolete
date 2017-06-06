expressions
Value
	"Matchs a value (returns true)."

	"Value := Reference | Primitive | Element"

	^ self Primitive or: [ self Reference or: [ self Reference2 or: [ self Element ] ] ]