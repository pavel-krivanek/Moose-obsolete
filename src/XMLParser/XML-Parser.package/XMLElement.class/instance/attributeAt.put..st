accessing
attributeAt: aName put: aValue
	"sets the value of the attribute whose full name matches aName to the value
	aValue"

	^ self attributeNodes
		attributeValueAt: aName
		put: aValue