testing
isOmittable
	^ self isCanonical
		and: [self isEmbeddedInDoctypeDeclaration]