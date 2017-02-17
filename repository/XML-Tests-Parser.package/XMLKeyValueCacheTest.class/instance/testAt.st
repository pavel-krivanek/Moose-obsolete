tests
testAt
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert: (cache at: key) = value].
	self assert: (cache at: 'absentKey') isNil.