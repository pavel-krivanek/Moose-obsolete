entity collection
addNoAnnounce: anElement 
	self entityStorage add: anElement.
	self privateState flushGroups. 
	anElement privateSetMooseModel: self.
	^anElement