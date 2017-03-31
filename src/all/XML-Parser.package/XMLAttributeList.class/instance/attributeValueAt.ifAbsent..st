private
attributeValueAt: aName ifAbsent: aBlock
	^ (self
		at: (self indexOfAttribute: aName)
		ifAbsent: [^ aBlock value]) value