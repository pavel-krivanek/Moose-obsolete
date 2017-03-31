testing
hasPushedBackEntityNamed: aName
	self hasPushedBackEntities
		ifFalse: [^ false].
	self pushedBackEntities reverseDo: [:each |
		each name = aName
			ifTrue: [^ true]].
	^ false.