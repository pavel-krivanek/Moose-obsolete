removing
remove: aState ifAbsent: aBlock
	set
		remove: aState
		ifAbsent: [^ aBlock value].

	isAccepting
		ifTrue: [isAccepting := set anySatisfy: [:each | each isAccepting]].

	^ aState.