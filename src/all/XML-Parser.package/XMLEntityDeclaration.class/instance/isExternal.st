testing
isExternal
	^ self systemID notEmpty
		or: [self publicID notEmpty]