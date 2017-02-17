*Famix-Extensions
withAllParentScopesDo: aBlock
	aBlock value: self.
	self allParentScopesDo: aBlock