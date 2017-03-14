errors
testMethodOverriding 
	 
	self assert: (self model entityNamed: (LANOutputServer>>#canOutput) mooseName) isOverriding. 
	self assert: (self model entityNamed: (LANNode>>#canOutput) mooseName) isOverriden