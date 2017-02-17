tests
testValuesDo
	self
		should: [:block | self newCache valuesDo: block]
		inAnyOrderEnumerate: #().

	self
		should: [:block | self newCacheWithEntries valuesDo: block]
		inAnyOrderEnumerate: self values.