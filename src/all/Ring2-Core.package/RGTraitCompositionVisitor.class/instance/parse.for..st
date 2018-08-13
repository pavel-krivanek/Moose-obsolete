parsing
parse: anExpressionString for: anRGTraitCompositionDefinition

	| ast result |
	ast := (RBParser parseExpression: anExpressionString).
	self traitComposition: anRGTraitCompositionDefinition.
	result := ast acceptVisitor: self.
	
	result isCollection 
		ifFalse: [ result := OrderedCollection with: result. ].
		
	^ result.