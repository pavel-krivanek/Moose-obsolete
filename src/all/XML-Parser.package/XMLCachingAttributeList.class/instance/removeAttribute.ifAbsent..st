removing
removeAttribute: aName ifAbsent: aBlock
	^ (self remove:
		(self attributeNodesByName
			at: aName
			ifAbsent: [^ aBlock value])) value