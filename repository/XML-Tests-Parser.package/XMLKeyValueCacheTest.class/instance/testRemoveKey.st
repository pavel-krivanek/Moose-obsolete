tests
testRemoveKey
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self
			assert: (cache removeKey: key) = value;
			deny: (cache includesKey: key).

		"does not raise errors to support concurrent removal"
		self assert: (cache removeKey: key) isNil].
	self assert: cache isEmpty.