testing
testClassMethods
	self assert: self nodeClass numberOfMethods equals: 12.
	self assert: (self nodeClass propertyNamed: #numberOfMethodsInherited) equals: 0.
	self assert: (self nodeClass propertyNamed: #numberOfMethodsOverriden) equals: 0.
	self
		assert: (self nodeClass propertyNamed: #numberOfMethodsAdded)
		equals: (self nodeClass propertyNamed: #numberOfMethods).
	self assert: (self nodeClass propertyNamed: #numberOfConstructorMethods) equals: 0.
	self assert: (self nodeClass propertyNamed: #numberOfPrivateMethods) equals: 0.
	self assert: (self nodeClass propertyNamed: #numberOfProtectedMethods) equals: 0.
	self
		assert: (self nodeClass propertyNamed: #numberOfPublicMethods)
		equals: (self nodeClass propertyNamed: #numberOfMethods).
	self
		assert: (self workstationClass propertyNamed: #numberOfMethodsInherited)
		equals: (self nodeClass propertyNamed: #numberOfMethods) + (self nodeClass propertyNamed: #numberOfMethodsInherited).
	self assert: (self workstationClass propertyNamed: #numberOfMethodsAdded) equals: 1.
	self assert: (self workstationClass propertyNamed: #numberOfMethodsOverriden) equals: 3.
	self
		assert:
			(self workstationClass propertyNamed: #numberOfMethodsAdded)
				+ (self workstationClass propertyNamed: #numberOfMethodsOverriden)
		equals: (self workstationClass propertyNamed: #numberOfMethods)