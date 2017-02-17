accessing
attributeAt: aName ifAbsent: aBlock
	^ self
		attributeValueAt: aName
		ifAbsent: aBlock