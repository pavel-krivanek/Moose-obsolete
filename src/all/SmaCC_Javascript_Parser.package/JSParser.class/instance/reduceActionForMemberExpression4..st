generated-reduction actions
reduceActionForMemberExpression4: nodes
	| result |
	result := JSTaggedTemplateLiteralNode new.
	result expression: (nodes at: 1).
	result template: (nodes at: 2).
	^ result