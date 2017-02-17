handling - lexical
xmlVersion: aVersionFloat encoding: anEncoding standalone: aBoolean
	self document ifNotNil: [
		self document
			version: aVersionFloat;
			encoding: anEncoding;
			isStandalone: aBoolean]