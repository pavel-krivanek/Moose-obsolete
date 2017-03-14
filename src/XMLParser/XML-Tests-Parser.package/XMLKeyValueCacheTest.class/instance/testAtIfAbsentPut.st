tests
testAtIfAbsentPut
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert:
			(cache
				at: key
				ifAbsentPut: [self fail]) = value.
		self
			assert: (cache at: key) = value;
			assert: cache size = self maxSize].
	self assert:
		(cache
			at: 'newKey'
			ifAbsentPut: ['newValue']) = 'newValue'.
	self
		assert: (cache at: 'newKey') = 'newValue';
		assert: cache size = 1.

	"the ifAbsentPut: block can modify the cache too, so make sure
	it is cleared if needed to make room"
	cache := self newCacheWithEntries.
	self assert:
		(cache
			at: 'newKey'
			ifAbsentPut: [
				cache
					at: 'newKeyTwo'
					put: 'newValue']) = 'newValue'.
	self
		assert: cache size = 2;
		assert: (cache at: 'newKey') = 'newValue';
		assert: (cache at: 'newKeyTwo') = 'newValue'.