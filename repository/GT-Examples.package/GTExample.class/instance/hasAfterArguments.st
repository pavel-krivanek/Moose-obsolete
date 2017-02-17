testing
hasAfterArguments
	^ self hasAfter
		and: [ self after hasArguments ]