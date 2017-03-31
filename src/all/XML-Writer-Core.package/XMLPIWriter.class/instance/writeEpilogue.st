private
writeEpilogue
	self isOmittable
		ifFalse: [
			self writer
				nextPutAll: '?>';
				formatAfterPI: self]