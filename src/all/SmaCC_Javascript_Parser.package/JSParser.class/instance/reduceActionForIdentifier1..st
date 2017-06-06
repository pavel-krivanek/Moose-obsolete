generated-reduction actions
reduceActionForIdentifier1: nodes
	| result |
	result := JSNameExpressionNode new.
	result name: (nodes at: 1).
	^ result