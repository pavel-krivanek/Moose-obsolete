importing-filters
allDependentsOf: aKey alreadyIn: aSet
	
	(self entityDependencies at: aKey)
		do:
			[:each | 
			(aSet includes: each)
				ifFalse:
					[aSet add: each.
					aSet addAll: (self allDependentsOf: each alreadyIn: aSet)]].
	^aSet