accessing-derived
instantiationTimestamp
	^self rootAlias
		ifNotNil: [ :alias | alias timestamp ]
		ifNil: [ -1 ]