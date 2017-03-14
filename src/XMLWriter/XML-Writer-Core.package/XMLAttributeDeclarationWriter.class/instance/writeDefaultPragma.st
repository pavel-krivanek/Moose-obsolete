writing
writeDefaultPragma
	self defaultPragma notEmpty
		ifTrue: [
			self writer
				space;
				nextPut: $#;
				nextPutAll: self defaultPragma]