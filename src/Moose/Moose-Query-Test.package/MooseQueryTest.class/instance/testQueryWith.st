tests
testQueryWith
"queryIncoming: is equivalent to query: #in with:"
	self assert: (package1 query: #out with: FAMIXInvocation) size equals: 1.