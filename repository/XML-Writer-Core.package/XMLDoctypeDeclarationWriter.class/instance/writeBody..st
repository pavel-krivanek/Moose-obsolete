private
writeBody: aStringOrCollectionOrBlock
	self isOmittable
		ifFalse: [super writeBody: aStringOrCollectionOrBlock]