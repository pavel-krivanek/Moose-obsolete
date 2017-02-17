private
findSupportedImplementation
	self isSupportedImplementation
		ifTrue: [^ self].

	self preferredImplementation isSupportedImplementation
		ifTrue: [^ self preferredImplementation].
	self allSubclassesDo: [:each |
		each isSupportedImplementation
			ifTrue: [^ each]].

	^ nil.