private
writeBody
	self isOmittable
		ifFalse: [self externalIDWriter writeOn: self writer]