generated-reduction actions
reduceActionForIterationStatement7: nodes
	| result |
	result := JSForInStatementNode new.
	result forToken: (nodes at: 1).
	result left: (nodes at: 2).
	result varToken: (nodes at: 3).
	result variable: (nodes at: 4).
	result inToken: (nodes at: 5).
	result expression: (nodes at: 6).
	result right: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result