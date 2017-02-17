enumerating
keysDo: aBlock
	self critical: [self collection keysDo: aBlock]