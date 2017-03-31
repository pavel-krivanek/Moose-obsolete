tests
testKeysAndValuesDo
	self
		should: [:block | self newCache keysAndValuesDo: block]
		inAnyOrderEnumerateKeysAndValues: #().

	self
		should: [:block | self newCacheWithEntries keysAndValuesDo: block]
		inAnyOrderEnumerateKeysAndValues: self associations.