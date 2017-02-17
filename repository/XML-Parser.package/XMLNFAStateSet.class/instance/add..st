adding
add: aState
	isAccepting
		ifFalse: [isAccepting := aState isAccepting].

	^ set add: aState.