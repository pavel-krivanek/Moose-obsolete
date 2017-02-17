testing
testClassCategories
	self assert: (self nodeClass propertyNamed: #numberOfMethodProtocols) equals: 6.
	self assert: self nodeClass numberOfMethodProtocols equals: 6