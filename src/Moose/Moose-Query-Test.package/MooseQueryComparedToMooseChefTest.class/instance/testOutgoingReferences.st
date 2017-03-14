tests
testOutgoingReferences
	self
		assert: (package1 queryOutgoing: FAMIXReference) asSet
		equals:
			(package1
				createOutgoingQueryResultWith: (package1 methods flatCollect: [ :m | m outgoingReferences ]))
				asSet.
	self
		assert: (class1 queryOutgoing: FAMIXReference) asSet
		equals:
			(class1
				createOutgoingQueryResultWith: (class1 methods flatCollect: [ :m | m outgoingReferences ]))
				asSet.
	self
		assert: (method1 queryOutgoing: FAMIXReference) asSet
		equals: (method1 createOutgoingQueryResultWith: method1 outgoingReferences) asSet