scoping
primCollectAtScope: aScopeSymbol

	self deprecated: 'This method is part of the old query system. Now instead of #collectAtScope: aSymbol you should use #atScope: aClass.' on: '19/05/2016' in: 'Moose6.1'.
	^ storage collect: [ :obj | obj perform: aScopeSymbol ]