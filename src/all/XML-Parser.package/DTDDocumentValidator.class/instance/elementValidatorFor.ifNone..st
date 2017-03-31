accessing
elementValidatorFor: anElement ifNone: aBlock
	^ self doctypeDefinition
		elementValidatorsAt: anElement
		ifAbsent: aBlock