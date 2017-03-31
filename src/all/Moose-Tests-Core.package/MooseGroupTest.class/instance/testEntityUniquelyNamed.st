tests
testEntityUniquelyNamed
	
	| classes |
	classes := self model allClasses.
	self
		assert: (classes entityNamed: classes first mooseName) == classes first.
	self assert: (classes entityNamed: classes last mooseName) == classes last.
	self
		assert: (classes entityNamed: LANNode mooseName) isNil not.
	self
		assert:
			(classes entityNamed: LANNode class mooseName) isNil not