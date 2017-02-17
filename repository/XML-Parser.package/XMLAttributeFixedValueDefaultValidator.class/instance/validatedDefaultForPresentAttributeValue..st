validating
validatedDefaultForPresentAttributeValue: anAttributeValue
	anAttributeValue = self value
		ifFalse: [self errorFixedAttributeValueCannotChange].
	^ anAttributeValue.