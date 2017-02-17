parsing - peeking
peekForAbbreviatedStep
	(readStream peekFor: $.)
		ifFalse: [^ false].
	self atDigit
		ifTrue: [
			"a float literal, not a . or .. step"
			readStream skipBack.
			^ false].

	(readStream peekFor: $.)
		ifTrue: [currentAxis axisSpecifier: 'parent']
		ifFalse: [currentAxis axisSpecifier: 'self'].
	"abbreviated steps cannot have filters"
	self startNodeTestForAnyNodeType.
	^ true.