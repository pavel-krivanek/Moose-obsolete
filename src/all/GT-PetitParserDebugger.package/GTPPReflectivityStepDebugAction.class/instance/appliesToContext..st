testing
appliesToContext: aContext

	^ self session isActive and: [
		aContext locateTopPPParser notNil ]