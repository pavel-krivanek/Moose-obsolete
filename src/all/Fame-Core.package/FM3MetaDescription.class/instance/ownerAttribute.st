accessing-query
ownerAttribute
	self flag: #FIXME.
	self flag: 'It is possible that several containers exists for a given entity -> we have not a tree, but we should not get cycles at ALL'.
	^self allAttributes detect: #isContainer ifNone: [ nil ]