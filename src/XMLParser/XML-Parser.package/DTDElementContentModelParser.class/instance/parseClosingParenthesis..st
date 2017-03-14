private
parseClosingParenthesis: aCharacter
	self popRemainingBinaryOperators.
	(binaryOperatorStack notEmpty
		and: [binaryOperatorStack last == $(])
		ifTrue: [binaryOperatorStack removeLast].