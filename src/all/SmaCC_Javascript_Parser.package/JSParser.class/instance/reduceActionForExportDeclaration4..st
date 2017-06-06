generated-reduction actions
reduceActionForExportDeclaration4: nodes
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result statement: (nodes at: 2).
	^ result