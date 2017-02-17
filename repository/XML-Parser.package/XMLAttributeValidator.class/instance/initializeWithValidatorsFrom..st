initialization
initializeWithValidatorsFrom: aValidatorContainer
	(self mustFurtherNormalizeAttributeValue
		and: [self defaultValidator isValue])
		ifTrue: [
			self defaultValidator value:
				(self furtherNormalizeAttributeValue:
					self defaultValidator value)]