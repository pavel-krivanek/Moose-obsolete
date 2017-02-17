tests
testAtIfAbsent
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert:
			(cache
				at: key
				ifAbsent: [self fail]) = value].
	self assert:
		(cache
			at: 'absentKey'
			ifAbsent: ['absentValue']) = 'absentValue'.

	"the ifAbsent: block can modify the cache too, so make sure
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