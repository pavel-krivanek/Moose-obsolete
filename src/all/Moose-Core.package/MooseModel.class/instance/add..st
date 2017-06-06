entity collection
add: anElement 
	 
	super add: anElement.
	anElement privateSetMooseModel: self.
	self announcer announce: (MooseEntityAdded new entity: anElement).
	^anElement