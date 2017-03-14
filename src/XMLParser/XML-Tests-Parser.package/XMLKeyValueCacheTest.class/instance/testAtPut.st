tests
testAtPut
	| cache |

	cache := self cacheClass maxSize: self maxSize.
	self associations withIndexDo: [:each :i | | key value |
		key := each key.
		value := each value.
		self assert:
			(cache
				at: key
				put: value) = value.
		self
			assert: (cache at: key) = value;
			assert: cache size = i].
	self assert:
		(cache
			at: 'newKey'
			put: 'newValue') = 'newValue'.
	self
		assert: (cache at: 'newKey') = 'newValue';
		assert: cache size = 1.