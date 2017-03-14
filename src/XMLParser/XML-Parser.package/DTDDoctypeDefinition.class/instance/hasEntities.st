testing
hasEntities
	^ self hasGeneralEntities
		or: [self hasParameterEntities
			or: [self hasUnparsedEntities]]