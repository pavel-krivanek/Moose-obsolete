private
writeBody
	self isOmittable
		ifFalse: [self writeExternalID]