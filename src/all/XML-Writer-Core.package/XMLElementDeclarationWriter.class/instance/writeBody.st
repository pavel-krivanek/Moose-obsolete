private
writeBody
	self isOmittable
		ifFalse: [self writeContentModel]