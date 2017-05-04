testing
hasPushedBackEntity: aPushedBackEntity
	self hasPushedBackEntities
		ifFalse: [^ false].
	self pushedBackEntities do: [:each |
		each entity = aPushedBackEntity entity
			ifTrue: [^ true]].
	^ false.