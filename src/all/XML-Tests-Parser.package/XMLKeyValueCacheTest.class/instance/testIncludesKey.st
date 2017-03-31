tests
testIncludesKey
	| cache |

	cache := self newCacheWithEntries.
	self keys do: [:key |
		self assert: (cache includesKey: key)].
	self deny: (cache includesKey: 'absentKey').