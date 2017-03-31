errors
testHierarchyRoot 
	self assert: (self model entityNamed: LANNode mooseName) isHierarchyRoot. 
	self deny: ((self model entityNamed: LANNode mooseName) 
				isHierarchyRootWithin: self model allClasses)