removing
removeKey: aKey ifPresent: aBlock
	"Looks up the value of aKey and if present, evaluates aPresentBlock
	optionally with it, and if aPresentBlock returns true, removes the
	key from the cache and returns its old value."
	^ self
		at: aKey
		ifPresent: [:value |
			(aBlock cull: value)
				ifTrue: [self removeKey: aKey]
				ifFalse: [value]]