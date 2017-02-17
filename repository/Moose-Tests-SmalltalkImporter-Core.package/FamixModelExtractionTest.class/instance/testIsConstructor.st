tests
testIsConstructor
	self assert: (self model entityNamed: (LANNode class>>#new) mooseName) isConstructor