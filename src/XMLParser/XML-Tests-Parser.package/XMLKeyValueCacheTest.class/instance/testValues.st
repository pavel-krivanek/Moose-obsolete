tests
testValues
	self
		assert: self newCache values isEmpty;
		assert: self newCacheWithEntries values asSet = self values asSet