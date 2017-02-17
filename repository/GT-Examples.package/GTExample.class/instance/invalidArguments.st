accessing-dynamic
invalidArguments
	^ self arguments reject: [ :each | each isValid ]