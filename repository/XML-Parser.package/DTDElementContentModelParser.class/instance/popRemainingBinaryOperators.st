private
popRemainingBinaryOperators
	[self hasBinaryOperatorOnStack]
		whileTrue: [self applyBinaryOperatorOnStack]