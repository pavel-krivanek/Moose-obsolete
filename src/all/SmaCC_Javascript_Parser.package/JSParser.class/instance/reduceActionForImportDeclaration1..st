generated-reduction actions
reduceActionForImportDeclaration1: nodes
	| result |
	result := JSImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result addObjects: ((nodes at: 2) at: 1) to: result imports.
	result comma: ((nodes at: 2) at: 2).
	result fromToken: ((nodes at: 3) at: 1).
	result from: ((nodes at: 3) at: 2).
	result semicolon: (nodes at: 4).
	^ result