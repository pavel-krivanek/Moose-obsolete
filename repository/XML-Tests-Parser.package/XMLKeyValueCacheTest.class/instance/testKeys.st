tests
testKeys
	self
		assert: self newCache keys isEmpty;
		assert: self newCacheWithEntries keys asSet = self keys asSet