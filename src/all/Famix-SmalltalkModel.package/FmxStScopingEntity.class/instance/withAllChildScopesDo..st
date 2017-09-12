navigation
withAllChildScopesDo: aBlock
	aBlock value: self.
	self allChildScopesDo: aBlock