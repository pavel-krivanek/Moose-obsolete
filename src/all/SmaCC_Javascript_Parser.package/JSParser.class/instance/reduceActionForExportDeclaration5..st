generated-reduction actions
reduceActionForExportDeclaration5: nodes
	| result |
	result := JSExportDeclarationNode new.
	result exportToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result