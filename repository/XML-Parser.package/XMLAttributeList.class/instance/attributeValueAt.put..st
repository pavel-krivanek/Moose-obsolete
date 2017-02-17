private
attributeValueAt: aName put: aValue
	(self includesAttribute: aName)
		ifTrue: [(self attributeNodeAt: aName) value: aValue]
		ifFalse: [self addAttributeName: aName value: aValue].
	^ aValue.