accessing
attributeAt: aName ifAbsentPut: aBlock
	"sets the value of the attribute whose full name matches aName to the value
	of aBlock if there isn't one already"

	^ self attributeNodes
		attributeValueAt: aName
		ifAbsentPut: aBlock