private
writePrologue
	self isOmittable
		ifFalse: [
			self writer
				formatBeforeXMLDeclaration: self;
				nextPutAll: '<?xml']