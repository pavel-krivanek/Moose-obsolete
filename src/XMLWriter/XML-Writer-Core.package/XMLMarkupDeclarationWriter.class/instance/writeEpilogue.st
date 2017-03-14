private
writeEpilogue
	self isOmittable
		ifFalse: [
			self writer
				nextPut: $>;
				formatAfterDeclaration: self]