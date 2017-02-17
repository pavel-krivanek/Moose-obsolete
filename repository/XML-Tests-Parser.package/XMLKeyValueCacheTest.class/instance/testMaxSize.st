tests
testMaxSize
	| cache |

	cache := self newCache.
	self
		assert: cache size = 0;
		assert: cache maxSize = self defaultMaxSize.

	cache := self newCacheWithEntries.
	self
		assert: cache size = self maxSize;
		assert: cache maxSize = self maxSize.

	self
		assert: (cache maxSize: self maxSize + 1) == cache;
		assert: cache maxSize = (self maxSize + 1);
		assert: cache size = self maxSize.

	self
		assert: (cache maxSize: 0) == cache;
		assert: cache maxSize = 0;
		assert: cache size = 0.