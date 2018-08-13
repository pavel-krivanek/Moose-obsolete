managing container
addoptToParentStub

	super addoptToParentStub.
	self environment backend createUnresolvedClassGroupFor: self parent.
	self parent pvtAddLocalMethod: self.
	
	
