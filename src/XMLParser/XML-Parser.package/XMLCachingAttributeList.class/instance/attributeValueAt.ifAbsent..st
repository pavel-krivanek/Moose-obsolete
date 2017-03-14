private
attributeValueAt: aName ifAbsent: aBlock
	^ (self attributeNodesByName
		at: aName
		ifAbsent: [^ aBlock value]) value