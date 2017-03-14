tests
testRemoveKeyIfPresent
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert:
			(cache
				removeKey: key
				ifPresent: [:each | each ~= value]) = value.
		self assert: (cache includesKey: key).

		"ensure cull: is used"
		self assert:
			(cache
				removeKey: key
				ifPresent: [false]) = value.
		self assert: (cache includesKey: key).

		self assert:
			(cache
				removeKey: key
				ifPresent: [:each | each = value]) = value.
		self deny: (cache includesKey: key).

		self assert:
			(cache
				removeKey: key
				ifPresent: [self fail]) isNil.
		self deny: (cache includesKey: key)].
	self assert: cache isEmpty.