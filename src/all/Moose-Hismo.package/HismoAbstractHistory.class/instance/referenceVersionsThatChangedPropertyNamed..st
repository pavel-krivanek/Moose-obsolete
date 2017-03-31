versions
referenceVersionsThatChangedPropertyNamed: aProperty
	
	^(self select: [:each | each changedPropertyNamed: aProperty])
		collect: [:each | each referenceVersion]