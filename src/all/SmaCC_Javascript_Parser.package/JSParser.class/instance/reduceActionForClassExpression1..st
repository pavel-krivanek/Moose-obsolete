generated-reduction actions
reduceActionForClassExpression1: nodes
	| result |
	result := JSClassExpressionNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result extendsToken: ((nodes at: 3) at: 1).
	result superclass: ((nodes at: 3) at: 2).
	result leftBrace: ((nodes at: 3) at: 3).
	result addNodes: ((nodes at: 3) at: 4) to: result elements.
	result rightBrace: ((nodes at: 3) at: 5).
	^ result