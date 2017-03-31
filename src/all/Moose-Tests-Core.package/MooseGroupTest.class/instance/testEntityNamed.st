tests
testEntityNamed
	
	self model allClasses
		do:
			[:each | self assert: (self model allClasses entityNamed: each mooseName) notNil].
	self model allMethods
		do:
			[:each | self assert: (self model allMethods entityNamed: each mooseName) notNil]