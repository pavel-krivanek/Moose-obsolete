actions
installWithCache: aBoolean

	aBoolean
		ifTrue: [	self cacheMooseGroups ].
	^ MooseModel root add: self