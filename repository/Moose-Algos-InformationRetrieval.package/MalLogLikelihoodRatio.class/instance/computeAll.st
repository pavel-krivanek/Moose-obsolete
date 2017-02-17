accessing
computeAll
	
	| comparison |
	comparison := (terms1 asSet union: terms2 asSet) asArray
		collect: [:each | each -> (self computeLogLR: each)].
	^(comparison sorted: #value asSortBlock) reversed