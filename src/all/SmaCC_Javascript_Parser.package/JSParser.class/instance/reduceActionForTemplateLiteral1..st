generated-reduction actions
reduceActionForTemplateLiteral1: nodes
	| result |
	result := JSTemplateLiteralNode new.
	result addToken: (nodes at: 1) to: result parts.
	^ result