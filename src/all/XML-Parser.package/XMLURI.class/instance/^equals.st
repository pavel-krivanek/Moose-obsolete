comparing
= anObject
	self == anObject
		ifTrue: [^ true].

	self species == anObject species
		ifFalse: [^ false].

	self scheme = anObject scheme
		ifFalse: [^ false].

	"#has* tests are used as an optimization to skip direclty comparing
	components unless needed when doing so would require additional
	decoding of the raw components"
	self hasUserInfo
		ifTrue: [
			(anObject hasUserInfo
				and: [self userInfo = anObject userInfo])
				ifFalse: [^ false]]
		ifFalse: [
			anObject hasUserInfo
				ifTrue: [^ false]].

	self hasHost
		ifTrue: [
			(anObject hasHost
				and: [self host = anObject host])
				ifFalse: [^ false]]
		ifFalse: [
			anObject hasHost
				ifTrue: [^ false]].

	self port = anObject port
		ifFalse: [^ false].

	self hasPath
		ifTrue: [
			(anObject hasPath
				and: [self pathSegments = anObject pathSegments])
				ifFalse: [^ false]]
		ifFalse: [
			anObject hasPath
				ifTrue: [^ false]].

	self hasQuery
		ifTrue: [
			(anObject hasQuery
				and: [self query = anObject query])
				ifFalse: [^ false]]
		ifFalse: [
			anObject hasQuery
				ifTrue: [^ false]].

	self hasFragment
		ifTrue: [
			(anObject hasFragment
				and: [self fragment = anObject fragment])
				ifFalse: [^ false]]
		ifFalse: [
			anObject hasFragment
				ifTrue: [^ false]].

	^ true.