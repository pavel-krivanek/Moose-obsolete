versions
referenceVersionsInWhichChangeOccured: aBlock
	
	^(self select: [:each | each changedFromPrevious: aBlock])
		collect: [:each | each referenceVersion]