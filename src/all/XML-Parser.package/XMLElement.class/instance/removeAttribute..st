removing
removeAttribute: aName
	"Removes and returns the value of the attribute whose full name matches
	aName or raises an error if it's absent."

	^ (self attributeNodes removeAttribute: aName) value.