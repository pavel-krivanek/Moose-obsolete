tests
testAtScope
	self assert: (class1 atScope: FAMIXClass) equals: {class1}.
	self assert: (class1 atScope: FAMIXType) equals: {class1}.
	self assert: (class1 atScope: FAMIXPackage) equals: {package1}.
	self
		assert: (class1 atScope: FAMIXScopingEntity)
		equals:
			{namespace.
			package1}