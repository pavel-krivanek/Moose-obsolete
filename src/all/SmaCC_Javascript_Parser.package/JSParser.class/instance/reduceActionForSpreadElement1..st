generated-reduction actions
reduceActionForSpreadElement1: nodes
	| result |
	result := JSSpreadExpressionNode new.
	result ellipsis: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result