tests
testAtIfPresentPut
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert:
			(cache
				at: key
				ifPresent: [:each | each ~= value]
				put: [self fail]) = value.
		self assert: (cache at: key) = value.

		"ensure cull: is used"
		self assert:
			(cache
				at: key
				ifPresent: [false]
				put: [self fail]) = value.
		self assert: (cache at: key) = value.

		self assert:
			(cache
				at: key
				ifPresent: [:each | each = value]
				put: ['newValue']) = 'newValue'.
		self assert: (cache at: key) = 'newValue'].

	self assert:
		(cache
			at: 'absentKey'
			ifPresent: [self fail]
			put: [self fail]) isNil.
	self deny: (cache includesKey: 'absentKey').

	"the ifPresent: block can modify the cache too, so make sure
	it is cleared if needed to make room"
	self assert:
		(cache
			at: self keys first
			ifPresent: [
				cache
					at: 'newKey'
					put: 'newValue'.
				false]
			put: [self fail]) = 'newValue'.
	self
		assert: cache size = 1;
		assert: (cache at: 'newKey') = 'newValue'.

	"the put: block can modify the cache too, so make sure
	it is cleared if needed to make room"
	cache := self cacheClass maxSize: 1.
	cache
		at: self keys first
		put: self values first.
	self assert:
		(cache
			at: self keys first
			ifPresent: [true]
			put: [
				cache
					at: 'newKey'
					put: 'newValue']) = 'newValue'.
	self
		assert: cache size = 1;
		assert: (cache at: self keys first) = 'newValue'.