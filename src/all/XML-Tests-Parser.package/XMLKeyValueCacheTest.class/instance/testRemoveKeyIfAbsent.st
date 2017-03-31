tests
testRemoveKeyIfAbsent
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert:
			(cache
				removeKey: key
				ifAbsent: [self fail]) = value.
		self deny: (cache includesKey: key).
		self assert:
			(cache
				removeKey: key
				ifAbsent: ['absentValue']) = 'absentValue'].
	self assert: cache isEmpty.

	cache := self newCacheWithEntries.
	self assert:
		(cache
			removeKey: 'absentKey'
			ifAbsent: [
				cache
					at: 'newKey'
					put: 'newValue']) = 'newValue'.
	self
		assert: cache size = 1;
		assert: (cache at: 'newKey') = 'newValue'.