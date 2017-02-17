errors
testSubClassHierarchy
	self assert: (self model entityNamed: LANNode mooseName) subclassHierarchy size equals: 4.
	self assert: (self model entityNamed: LANNode mooseName) withSubclassHierarchy size equals: 5