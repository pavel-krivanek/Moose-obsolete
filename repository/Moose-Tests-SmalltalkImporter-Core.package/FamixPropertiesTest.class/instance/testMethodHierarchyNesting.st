testing
testMethodHierarchyNesting
	self assert: (self lanInterfaceOriginateMethod propertyNamed: #hierarchyNestingLevel) equals: 1.
	self assert: self lanInterfaceOriginateMethod hierarchyNestingLevel equals: 1