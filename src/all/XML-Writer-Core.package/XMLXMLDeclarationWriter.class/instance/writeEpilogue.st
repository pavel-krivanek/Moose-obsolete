private
writeEpilogue
	self isOmittable
		ifFalse: [
			self writer
				nextPutAll: '?>';
				formatAfterXMLDeclaration: self]