tests
testRemoveAll
	| cache |

	cache := self newCacheWithEntries.
	self deny: cache isEmpty.

	cache removeAll.
	self assert: cache isEmpty.