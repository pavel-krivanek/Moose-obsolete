managing container
addoptToParentStub

	self isRingResolved ifFalse: [ ^ self ].
	
	super addoptToParentStub.

	^ self parent addPackage: self.