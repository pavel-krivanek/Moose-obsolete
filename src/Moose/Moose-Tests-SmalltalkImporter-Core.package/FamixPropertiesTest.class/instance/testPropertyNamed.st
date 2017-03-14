testing
testPropertyNamed
	self assert: (self nodeClass propertyNamed: #numberOfAttributes) equals: 2.
	self assert: self nodeClass numberOfAttributes equals: 2