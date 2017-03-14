parsing
parseOn: aPPContext
	root parser: self.
	root stream: aPPContext stream.
	root start: 0.
	parser parseOn: aPPContext.
	root end: aPPContext position.
	^ root