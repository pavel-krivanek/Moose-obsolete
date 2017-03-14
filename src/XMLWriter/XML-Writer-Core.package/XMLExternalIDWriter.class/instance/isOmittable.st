testing
isOmittable
	^ self hasPublicID not
		and: [self hasSystemID not]