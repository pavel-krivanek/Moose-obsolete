deprecated
cut: aCollectionOfRoots contractUpTo: anInteger
	
	self deprecated: 'Use wordsToBeRemoved: and toSize: instead.'.
	wordsToBeRemoved := aCollectionOfRoots.
	self upTo: anInteger.
		
	