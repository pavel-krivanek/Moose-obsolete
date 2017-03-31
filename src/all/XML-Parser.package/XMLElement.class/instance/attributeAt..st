accessing
attributeAt: aName
	"returns the value of the attribute whose full name matches aName or an
	empty string if there isn't any"

	^ self attributeNodes attributeValueAt: aName