testing
acceptsArguments
	^ self minArguments > 0
		or: [self maxArguments isNil
			or: [self maxArguments > 0]]