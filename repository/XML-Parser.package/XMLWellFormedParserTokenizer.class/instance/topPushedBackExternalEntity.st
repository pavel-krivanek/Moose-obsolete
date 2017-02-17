accessing
topPushedBackExternalEntity
	self pushedBackEntities reverseDo: [:each |
		each isExternal
			ifTrue: [^ each]].
	^ nil.