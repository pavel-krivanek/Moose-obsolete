adding item
addObject: anObject
	| bool |
	bool := false.
	(self contains: anObject) ifFalse: [
		self addNewObject: anObject.
		bool := true ].
	
	self selectObject: anObject.
	^ bool.
	