tests
testOutgoingInvocation
"queryOutgoing: is equivalent to query: #out with:"
	self assert: (method1 queryOutgoing: FAMIXInvocation) size equals: 1.
	self assert: (method1 query: #out with: FAMIXInvocation) size equals: 1.
	self assert: (class2 queryOutgoing: FAMIXInvocation) size equals: 2.
	self assert: (class2 query: #out with: FAMIXInvocation) size equals: 2.