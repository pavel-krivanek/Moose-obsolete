testing
acceptsVariableArguments
	^ self acceptsArguments
		and: [self maxArguments isNil]