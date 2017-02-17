tests
testNotEmpty
	self
		deny: self newCache notEmpty;
		assert: self newCacheWithEntries notEmpty