testing
testClassAttributes
	self assert: self nodeClass numberOfAttributes equals: 2.
	self assert: self nodeClass numberOfAttributesInherited equals: 3.
	self assert: (self nodeClass propertyNamed: #numberOfPrivateAttributes) equals: 0.
	self assert: (self nodeClass propertyNamed: #numberOfProtectedAttributes) equals: 2.
	self assert: (self nodeClass propertyNamed: #numberOfPublicAttributes) equals: 0.
	self
		assert: (self workstationClass propertyNamed: #numberOfAttributesInherited)
		equals: (self totalNumberOfAttributesFor: LANWorkStation superclass).
	self
		assert: self workstationClass numberOfAttributesInherited
		equals: (self totalNumberOfAttributesFor: LANWorkStation superclass)