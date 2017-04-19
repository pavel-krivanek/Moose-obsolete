private
writeBody
	self isOmittable
		ifFalse: [
			self
				writeVersion;
				writeEncoding;
				writeStandalone]