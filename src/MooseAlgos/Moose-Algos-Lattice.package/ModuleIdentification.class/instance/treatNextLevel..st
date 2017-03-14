middle-phase
treatNextLevel: aCollection
	"the purpose of the method is to include the level 2 and beyond nodes in the module. The collection passed is the list of descendants nodes. See if the next level nodes' ancestors are in the list of candidates, if not flush the candidate list and stop the algo on this and the rest of the candidate nodes. Otherwise, check if the nodes converge to a single bottom. If not run the algorithm on the descendants of the collection nodes."
	
	(aCollection size = 0) ifTrue: [^false]. 
	aCollection do: [:each |
		(self candidate includesAllOf: (self allAncestors: each))
		 	ifFalse: [nodesToConsider addAll: self candidate. self flushCandidate. ^ false].		
		].	
		(self isEndConditionWith: aCollection)
							ifTrue: [^ true]
							ifFalse: [ ^false].
	
	self treatNextLevel: (self computeNextLevelNodes: aCollection)