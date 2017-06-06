generated-reduction actions
reduceActionForNamedImports1: nodes
	| result |
	result := JSNamedImportsNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result