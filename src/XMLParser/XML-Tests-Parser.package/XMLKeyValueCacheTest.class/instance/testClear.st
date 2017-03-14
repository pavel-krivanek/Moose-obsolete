tests
testClear
	| cache |

	cache := self newCacheWithEntries.
	self deny: cache isEmpty.

	cache clear.
	self assert: cache isEmpty.