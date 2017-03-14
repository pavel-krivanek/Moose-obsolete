accessing
attributeAt: aName ifAbsent: aBlock
	"returns the value of the attribute whose full name matches aName or the
	value of aBlock if there isn't any"

	^ self attributeNodes
		attributeValueAt: aName
		ifAbsent: aBlock