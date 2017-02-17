testing
testClassHierarchy
	self assert: (self nodeClass propertyNamed: #numberOfChildren) equals: 2.
	self assert: self nodeClass numberOfChildren equals: (self nodeClass propertyNamed: #numberOfChildren).
	self assert: self nodeClass totalNumberOfChildren equals: 4.
	self assert: self nodeClass hierarchyNestingLevel equals: 1