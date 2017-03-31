accessing
computeAllOfTerms1
	
	| comparison |
	comparison := terms1 asSet asArray
		collect: [:each | each -> (self computeLogLR: each)].
	^(comparison sorted: #value asSortBlock) reversed