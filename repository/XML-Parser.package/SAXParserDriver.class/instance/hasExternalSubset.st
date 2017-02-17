testing
hasExternalSubset
	^ self externalSubsetPublicID notEmpty
		or: [self externalSubsetSystemID notEmpty]