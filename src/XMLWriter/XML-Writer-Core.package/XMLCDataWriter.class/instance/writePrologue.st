private
writePrologue
	self isCanonical
		ifFalse: [
			self writer
				formatBeforeCData: self;
				nextPutAll: '<![CDATA[']