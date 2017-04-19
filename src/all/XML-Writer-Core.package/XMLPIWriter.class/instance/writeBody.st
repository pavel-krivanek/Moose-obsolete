private
writeBody
	(self isOmittable
		or: [self isDataOmittable])
		ifFalse: [self writeData]