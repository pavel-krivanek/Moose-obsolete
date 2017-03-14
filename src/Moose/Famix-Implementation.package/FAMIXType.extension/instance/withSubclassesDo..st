*Famix-Implementation
withSubclassesDo: aBlock
	aBlock value: self.
	self allSubclassesDo: aBlock