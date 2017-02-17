streaming
upToAny: aCollection
	^ self upToAnyMatching: [ :each | aCollection includes: each ]