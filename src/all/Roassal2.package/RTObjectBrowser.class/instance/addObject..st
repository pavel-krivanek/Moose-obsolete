adding item
addObject: anObject
	| bool |
	
	bool := false.
	anObject ifNil: [ ^ bool ].
	(self contains: anObject) ifFalse: [
		self addNewObject: anObject.
		bool := true ].
	
	self selectObject: anObject.
	^ bool.
	