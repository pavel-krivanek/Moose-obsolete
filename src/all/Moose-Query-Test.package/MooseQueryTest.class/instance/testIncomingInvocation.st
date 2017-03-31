tests
testIncomingInvocation
	"queryIncoming: is equivalent to query: #in with:"

	self assert: (method2 queryIncoming: FAMIXInvocation) size equals: 3.
	self assert: (method2 query: #in with: FAMIXInvocation) size equals: 3.
	self assert: (class2 queryIncoming: FAMIXInvocation) size equals: 3.
	self assert: (class2 query: #in with: FAMIXInvocation) size equals: 3