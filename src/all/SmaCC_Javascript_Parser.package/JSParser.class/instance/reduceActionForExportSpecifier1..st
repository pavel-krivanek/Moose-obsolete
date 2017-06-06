generated-reduction actions
reduceActionForExportSpecifier1: nodes
	| result |
	result := JSExportSpecifierNode new.
	result name: (nodes at: 1).
	^ result