removing
removeAttribute: aName ifAbsent: aBlock
	"Removes and returns the value of the attribute whose full name matches
	aName or returns the value of aBlock if it's absent."

	^ self attributeNodes
		removeAttribute: aName
		ifAbsent: aBlock