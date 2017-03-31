writing
writeDefaultValue
	(self defaultPragma isEmpty
		or: [self defaultPragma = 'FIXED'])
		ifTrue: [
			self writer
				space;
				writeEscapedContentString: self defaultValue]