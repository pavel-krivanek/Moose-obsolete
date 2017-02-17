comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self species == anObject species
		ifFalse: [^ false].

	self scheme = anObject scheme
		ifFalse: [^ false].
	((self hasUserInfo = anObject hasUserInfo)
		and: [self userInfo = anObject userInfo])
		ifFalse: [^ false].
	((self hasHost = anObject hasHost)
		and: [self host = anObject host])
		ifFalse: [^ false].
	self port = anObject port
		ifFalse: [^ false].
	(self hasPath = anObject hasPath
		and: [self pathSegments = anObject pathSegments])
		ifFalse: [^ false].
	((self hasQuery = anObject hasQuery)
		and: [self query = anObject query])
		ifFalse: [^ false].
	((self hasFragment = anObject hasFragment)
		and: [self fragment = anObject fragment])
		ifFalse: [^ false].

	^ true.