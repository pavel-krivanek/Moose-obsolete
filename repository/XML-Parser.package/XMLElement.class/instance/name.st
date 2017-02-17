accessing
name
	"returns the full name of the element, either a qualified name if it has a
	prefix or just a local name if it doesn't"

	^ name ifNil: [name := '']