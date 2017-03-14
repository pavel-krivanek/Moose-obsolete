testing
isEmpty
	self hasScheme
		ifTrue: [^ false].
	self hasAuthority
		ifTrue: [^ false].
	self hasPath
		ifTrue: [^ false].
	self hasQuery
		ifTrue: [^ false].
	self hasFragment
		ifTrue: [^ false].

	^ true.