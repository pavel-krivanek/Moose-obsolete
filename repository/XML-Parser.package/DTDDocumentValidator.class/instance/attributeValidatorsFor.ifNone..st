accessing
attributeValidatorsFor: anElement ifNone: aBlock
	^ self doctypeDefinition
		attributeValidatorsAt: anElement
		ifAbsent: aBlock