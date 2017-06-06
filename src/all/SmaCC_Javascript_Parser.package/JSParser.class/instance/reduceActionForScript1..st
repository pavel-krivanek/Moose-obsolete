generated-reduction actions
reduceActionForScript1: nodes
	| result |
	result := JSScriptNode new.
	result addNodes: (nodes at: 1) to: result statements.
	^ result