as yet unclassified
testCustomGraphInvokingMethods
	| visitor |
	visitor := FAMIXCustomGraphTraverser for: #invokingMethods.
	methodNeverInvoked accept: visitor.
	self assert: visitor visited size equals: 1.
	visitor := FAMIXCustomGraphTraverser for: #invokingMethods.
	methodA accept: visitor.
	self assert: visitor visited size equals: 2.
	visitor := FAMIXCustomGraphTraverser for: #invokingMethods.
	methodD accept: visitor.
	self assert: visitor visited size equals: 4