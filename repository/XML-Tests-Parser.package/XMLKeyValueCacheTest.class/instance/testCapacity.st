tests
testCapacity
	self
		assert: self newCache capacity = self defaultMaxSize;
		assert: self newCacheWithEntries capacity = self maxSize