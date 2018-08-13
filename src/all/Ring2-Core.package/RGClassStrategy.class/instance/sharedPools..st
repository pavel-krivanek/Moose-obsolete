private - backend access
sharedPools: aCollectionOfSymbols

	self cleanSharedPools.
	aCollectionOfSymbols do: [ :poolName |
		self addSharedPool: (RGPoolVariable named: poolName asSymbol parent: self).].