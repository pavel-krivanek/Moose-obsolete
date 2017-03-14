enumerating
withAllParentsDo: aBlock
	aBlock value: self.
	self allParentsDo: aBlock