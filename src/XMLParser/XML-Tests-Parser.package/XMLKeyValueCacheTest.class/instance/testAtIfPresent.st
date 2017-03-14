tests
testAtIfPresent
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert:
			(cache
				at: key
				ifPresent: [:each | #present -> each]) = (#present -> value).
		"ensure cull: is used"
		self assert:
			(cache
				at: key
				ifPresent: [#present]) = #present].
	self assert:
		(cache
			at: 'absentKey'
			ifPresent: [self fail]) isNil.

	"the ifPresent: block can modify the cache too, so make sure
	it is cleared if needed to make room"
	self assert:
		(cache
			at: 'absentKey'
			ifAbsent: [
				cache
					at: 'newKey'
					put: 'newValue']) = 'newValue'.
	self
		assert: cache size = 1;
		assert: (cache at: 'newKey') = 'newValue'.