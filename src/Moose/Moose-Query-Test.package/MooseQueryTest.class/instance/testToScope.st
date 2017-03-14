tests
testToScope
	self assert: (class1 toScope: FAMIXMethod) equals: {method1}.
	self
		assert: (class2 toScope: FAMIXAttribute) asSet
		equals:
			{var1.
			var2} asSet.
	self
		assert: (package1 toScope: FAMIXMethod)
		equals:
			{method1.
			methodExt}