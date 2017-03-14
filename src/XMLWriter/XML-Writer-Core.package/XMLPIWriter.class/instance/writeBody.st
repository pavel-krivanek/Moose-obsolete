private
writeBody
	(self isOmittable
		or: [self hasData not])
		ifFalse: [
			self writer
				space;
				nextPutAll: self data]