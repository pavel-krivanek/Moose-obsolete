tests
testIncomingInvocations
	"queryIncoming: is equivalent to query: #in with:"

	self
		assert: (method2 queryIncoming: FAMIXInvocation) asSet
		equals: (method2 createIncomingQueryResultWith: method2 incomingInvocations) asSet.
	self
		assert: (class2 queryIncoming: FAMIXInvocation) asSet
		equals: (class2 createIncomingQueryResultWith: (class2 methods flatCollect: [ :m | m incomingInvocations ])) asSet.
	self
		assert: (package2 queryIncoming: FAMIXInvocation) asSet
		equals: (package2 createIncomingQueryResultWith: (package2 methods flatCollect: [ :m | m incomingInvocations ])) asSet.
	self
		assert: (namespace queryIncoming: FAMIXInvocation) asSet
		equals:
			(namespace createIncomingQueryResultWith: (namespace methods flatCollect: [ :c | c incomingInvocations ])) asSet.