generated-reduction actions
reduceActionForRegularExpressionLiteral1: nodes
	| result |
	result := JSRegularExpressionLiteralNode new.
	result value: (nodes at: 1).
	^ result