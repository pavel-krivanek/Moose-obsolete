tests
testOutgoingAccesses
	self
		assert: (package2 queryOutgoing: FAMIXAccess) asSet
		equals: (package2 createOutgoingQueryResultWith: (package2 methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (namespace queryOutgoing: FAMIXAccess) asSet
		equals: (namespace createOutgoingQueryResultWith: (namespace methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (class2 queryOutgoing: FAMIXAccess) asSet
		equals: (class2 createOutgoingQueryResultWith: (class2 methods flatCollect: [ :m | m accesses ])) asSet.
	self
		assert: (method2 queryOutgoing: FAMIXAccess) asSet
		equals: (method2 createOutgoingQueryResultWith: method2 accesses) asSet