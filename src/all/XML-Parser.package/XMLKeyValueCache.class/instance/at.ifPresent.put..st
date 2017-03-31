accessing
at: aKey ifPresent: aPresentBlock put: aValueBlock
	"Looks up the value of aKey and if present, evaluates aPresentBlock
	optionally with it, and if aPresentBlock returns true, replaces the old
	value with the result of evaluating aValueBlock."

	^ self
		at: aKey
		ifPresent: [:value |
			(aPresentBlock cull: value)
				ifTrue: [	
					self
						at: aKey
						put: aValueBlock value]
				ifFalse: [value]]