generated-reduction actions
reduceActionForArrowFunction1: nodes
	| result |
	result := JSArrowFunctionNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result parameters.
	result left: ((nodes at: 1) at: 2).
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result right: ((nodes at: 1) at: 4).
	result ellipsis: ((nodes at: 1) at: 5).
	result varParameter: ((nodes at: 1) at: 6).
	result arrow: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result statements.
	result leftBracket: ((nodes at: 3) at: 2).
	result rightBracket: ((nodes at: 3) at: 3).
	^ result