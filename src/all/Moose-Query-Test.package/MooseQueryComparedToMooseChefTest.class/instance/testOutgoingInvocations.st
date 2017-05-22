tests
testOutgoingInvocations
	self assert: (method2 queryOutgoing: FAMIXInvocation) asSet equals: (method2 createOutgoingQueryResultWith: method2 outgoingInvocations) asSet.
	self assert: (class2 queryOutgoing: FAMIXInvocation) asSet equals: (class2 createOutgoingQueryResultWith: (class2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self assert: (package2 queryOutgoing: FAMIXInvocation) asSet equals: (package2 createOutgoingQueryResultWith: (package2 methods flatCollect: [ :m | m outgoingInvocations ])) asSet.
	self assert: (namespace queryOutgoing: FAMIXInvocation) asSet equals: (namespace createOutgoingQueryResultWith: (namespace methods flatCollect: [ :c | c outgoingInvocations ])) asSet