testing
hasNotationAttributeValidators
	^ self hasAttributeValidators
		and: [self unparsedEntityValidator hasNotationAttributeValidators]