generated-reduction actions
reduceActionForSuperProperty1: nodes
	| result |
	result := JSSuperIndexedPropertyExpressionNode new.
	result superToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result