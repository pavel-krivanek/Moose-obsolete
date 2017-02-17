private
writePrologue
	self isCanonical
		ifFalse: [
			self writer
				formatBeforeXMLDeclaration: self;
				nextPutAll: '<?xml']