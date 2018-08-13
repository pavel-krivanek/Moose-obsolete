visiting
visitVariableNode: aVariableNode
	
	^ self traitComposition environment ensureTraitNamed: aVariableNode name
