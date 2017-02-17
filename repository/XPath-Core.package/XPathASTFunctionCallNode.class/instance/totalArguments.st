accessing
totalArguments
	^ arguments
		ifNil: [0]
		ifNotNil: [arguments size]