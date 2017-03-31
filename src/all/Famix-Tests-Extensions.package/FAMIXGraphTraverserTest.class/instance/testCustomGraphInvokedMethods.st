as yet unclassified
testCustomGraphInvokedMethods
	| visitor |
	visitor := FAMIXCustomGraphTraverser for: #invokedMethods.
	methodNeverInvoked accept: visitor.
	self assert: visitor visited size equals: 5.
	visitor := FAMIXCustomGraphTraverser for: #invokedMethods.
	methodA accept: visitor.
	self assert: visitor visited size equals: 4.
	visitor := FAMIXCustomGraphTraverser for: #invokedMethods.
	methodD accept: visitor.
	self assert: visitor visited size equals: 1