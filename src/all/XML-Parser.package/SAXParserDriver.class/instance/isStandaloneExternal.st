testing
isStandaloneExternal
	^ self isStandalone
		and: [self currentEntity notNil]