generated-reduction actions
reduceActionForModule1: nodes
	| result |
	result := JSModuleNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result