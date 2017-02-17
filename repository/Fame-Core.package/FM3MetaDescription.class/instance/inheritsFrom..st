accessing
inheritsFrom: aClass
	self
		allSuperclassesDo: [ :each | 
			each = aClass
				ifTrue: [ ^ true ] ].
	^ false