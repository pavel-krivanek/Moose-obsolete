private
writePrologue
	self isOmittable
		ifFalse: [
			self writer
				formatBeforeComment: self;
				nextPutAll: '<!--']