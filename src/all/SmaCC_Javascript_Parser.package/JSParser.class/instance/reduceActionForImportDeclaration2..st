generated-reduction actions
reduceActionForImportDeclaration2: nodes
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result addObject: (nodes at: 2) to: result imports.
	result semicolon: (nodes at: 3).
	^ result