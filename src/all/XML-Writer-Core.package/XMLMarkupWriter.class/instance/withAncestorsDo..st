enumerating
withAncestorsDo: aBlock
	aBlock value: self.
	self ancestorsDo: aBlock.