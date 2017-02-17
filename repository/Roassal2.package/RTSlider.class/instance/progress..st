accessing
progress: aFloat
	self
		assert: [ aFloat between: 0 and: 1 ]
		description: 'A progress must be a float between 0 and 1'.
	self value: min + ((max - min) * aFloat)