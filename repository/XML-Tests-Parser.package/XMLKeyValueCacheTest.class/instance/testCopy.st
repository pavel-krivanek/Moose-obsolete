tests
testCopy
	| cache copy |

	cache := self newCacheWithEntries.
	copy := cache copy.
	self
		deny: cache == copy;
		assert: cache collection = copy collection;
		deny: cache collection == copy collection;
		deny: cache mutex == copy mutex.