instance creation
newElementNamed: aName
	^ (self classForElement: aName)
		named: aName