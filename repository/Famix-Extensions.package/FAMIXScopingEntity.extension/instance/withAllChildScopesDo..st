*Famix-Extensions
withAllChildScopesDo: aBlock
	aBlock value: self.
	self allChildScopesDo: aBlock