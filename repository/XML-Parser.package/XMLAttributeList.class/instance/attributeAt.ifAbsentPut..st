accessing
attributeAt: aName ifAbsentPut: aBlock
	^ self
		attributeValueAt: aName
		ifAbsentPut: aBlock