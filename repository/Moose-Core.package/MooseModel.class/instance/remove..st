entity collection
remove: anElement
	self entityStorage remove: anElement. 
	anElement privateSetMooseModel: nil. 
	self privateState flushGroups. 
	self announcer announce: (MooseEntityRemoved new entity: anElement).
	^anElement