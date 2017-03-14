tests
testIsEmpty
	self
		assert: self newCache isEmpty;
		deny: self newCacheWithEntries isEmpty