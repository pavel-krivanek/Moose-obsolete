accessing
withSuperclassesDo: aBlock
	aBlock value: self.
	self allSuperclassesDo: aBlock