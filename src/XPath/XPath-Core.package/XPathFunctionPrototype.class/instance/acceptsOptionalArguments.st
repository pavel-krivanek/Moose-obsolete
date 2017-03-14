testing
acceptsOptionalArguments
	^ self acceptsArguments
		and: [self minArguments ~= self maxArguments]