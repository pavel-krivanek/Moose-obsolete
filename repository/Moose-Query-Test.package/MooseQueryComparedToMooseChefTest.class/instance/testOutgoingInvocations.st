tests
testOutgoingInvocations

	self
		assert: (method2 queryOutgoing: FAMIXInvocation) asSet
		equals: (method2 createOutgoingInvocationQueryResultWith: method2 outgoingInvocations) asSet.
	self
		assert: (class2 queryOutgoing: FAMIXInvocation) asSet
		equals: (class2 createOutgoingInvocationQueryResultWith: (class2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self
		assert: (package2 queryOutgoing: FAMIXInvocation) asSet
		equals: (package2 createOutgoingInvocationQueryResultWith: (package2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self
		assert: (namespace queryOutgoing: FAMIXInvocation) asSet
		equals:
			(namespace createOutgoingInvocationQueryResultWith: (namespace methods flatCollect: [ :c | c outgoingInvocations ])) asSet.