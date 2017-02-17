accessing-query
ownerAttribute

	^self allAttributes detect: #isContainer ifNone: [ nil ]