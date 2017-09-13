adding
add: aNewObject
	(self isUnique and: [ self includes: aNewObject ])
		ifTrue: [ ^ aNewObject ].
	self uncheckedAdd: aNewObject.
	self addOppositeTo: aNewObject.
	^ aNewObject