enumerating
valuesDo: aBlock
	self critical: [self collection valuesDo: aBlock]