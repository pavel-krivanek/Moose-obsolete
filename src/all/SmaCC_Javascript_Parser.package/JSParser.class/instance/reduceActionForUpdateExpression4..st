generated-reduction actions
reduceActionForUpdateExpression4: nodes
	| result |
	result := JSPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result