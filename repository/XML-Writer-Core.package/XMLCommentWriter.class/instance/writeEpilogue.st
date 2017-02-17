private
writeEpilogue
	self isOmittable
		ifFalse: [
			self writer
				nextPutAll: '-->';
				formatAfterComment: self]