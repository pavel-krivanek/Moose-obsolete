tests
testKeysDo
	self
		should: [:block | self newCache keysDo: block]
		inAnyOrderEnumerate: #().

	self
		should: [:block | self newCacheWithEntries keysDo: block]
		inAnyOrderEnumerate: self keys.