private
writeBody
	self isOmittable
		ifFalse: [self writer nextPutAll: self string]