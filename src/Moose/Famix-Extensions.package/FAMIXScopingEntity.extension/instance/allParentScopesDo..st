*Famix-Extensions
allParentScopesDo: aBlock
	self parentScope notNil ifTrue: [
		self parentScope withAllParentScopesDo: aBlock ]