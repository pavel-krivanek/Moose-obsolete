tests
testSize
	self
		assert: self newCache size = 0;
		assert: self newCacheWithEntries size = self maxSize