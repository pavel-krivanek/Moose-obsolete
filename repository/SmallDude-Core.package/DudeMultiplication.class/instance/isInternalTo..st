testing
isInternalTo: modelEntity 
	 
	^self duplications 
		allSatisfy: [:each | each isSelfDuplicationOf: modelEntity]