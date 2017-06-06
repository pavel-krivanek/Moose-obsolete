generated-reduction actions
reduceActionForBindingRestElement2: nodes
	| result |
	result := JSRestVariableDeclarationNode new.
	result ellipsis: (nodes at: 1).
	result variable: (nodes at: 2).
	^ result