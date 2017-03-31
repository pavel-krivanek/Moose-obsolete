testing
testAttributeMetrics
	| attribute1 attribute2 |
	attribute1 := self model entityNamed: #'Smalltalk::LANInterface.nextNode'.
	attribute2 := self model entityNamed: #'Smalltalk::LANOutputServer.serverType'.
	self assert: (attribute1 propertyNamed: #numberOfAccesses) equals: 3.
	self assert: attribute1 numberOfAccesses equals: 3.
	self assert: (attribute1 propertyNamed: #nameLength) equals: 8.
	self assert: attribute1 nameLength equals: 8.
	self assert: (attribute1 propertyNamed: #hierarchyNestingLevel) equals: 1.
	self assert: attribute1 hierarchyNestingLevel equals: 1.
	self assert: (attribute1 propertyNamed: #numberOfAccessingClasses) equals: 1.
	self assert: attribute1 numberOfAccessingClasses equals: 1.
	self assert: (attribute1 propertyNamed: #numberOfLocalAccesses) equals: 3.
	self assert: attribute1 numberOfLocalAccesses equals: 3.
	self assert: (attribute1 propertyNamed: #numberOfAccessingMethods) equals: 1.
	self assert: attribute1 numberOfAccessingMethods equals: 1.
	self assert: (attribute2 propertyNamed: #numberOfGlobalAccesses) equals: 1.
	self assert: attribute2 numberOfGlobalAccesses equals: 1