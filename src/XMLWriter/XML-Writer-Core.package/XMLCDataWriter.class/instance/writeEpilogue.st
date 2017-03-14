private
writeEpilogue
	self isCanonical
		ifFalse: [
			self writer
				nextPutAll: ']]>';
				formatAfterCData: self]