accessing
hostObject: anObject

	self
		assert: [ anObject isNotNil ]
		description: [ 'Host object must not be nil' ].

	self
		assert: [ hostObject isNil ]
		description: [ 'Host can be assigned only once' ].

	hostObject := anObject