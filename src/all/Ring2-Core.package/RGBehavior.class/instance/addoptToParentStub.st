managing container
addoptToParentStub

	| aPackage |
	
	self isRingResolved ifFalse: [ ^ self ].

	super addoptToParentStub.

	self parent pvtAddBehavior: self.
	

