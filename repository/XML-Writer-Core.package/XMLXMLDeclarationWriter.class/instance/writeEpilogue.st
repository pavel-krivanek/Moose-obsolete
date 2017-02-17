private
writeEpilogue
	self isCanonical
		ifFalse: [
			self writer
				nextPutAll: '?>';
				formatAfterXMLDeclaration: self]