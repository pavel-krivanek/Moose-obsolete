tests
testOutgoingInheritances
	self
		assert: (class1 queryOutgoing: FAMIXInheritance) asSet
		equals: (class1 createOutgoingQueryResultWith: class1 superInheritances) asSet.
	self
		assert: (package1 queryOutgoing: FAMIXInheritance) asSet
		equals: (package1 createOutgoingQueryResultWith: (package1 classes flatCollect: [ :c | c superInheritances ])) asSet.
	self assert: (method2 queryOutgoing: FAMIXInheritance) asSet equals: Array empty asSet