generated-reduction actions
reduceActionForImportSpecifier1: nodes
	| result |
	result := JSImportSpecifierNode new.
	result binding: (nodes at: 1).
	^ result