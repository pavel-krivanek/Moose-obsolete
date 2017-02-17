testing
isMultiplicationOf: modelEntity 
	 
	^self duplications anySatisfy: [:each | each isDuplicationOf: modelEntity]