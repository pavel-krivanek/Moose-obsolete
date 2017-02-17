as yet unclassified
testVisited
	| visitor |
	FAMIXInvocation new sender: methodD; addCandidate: methodA; mooseModel: model; signature: 'A'.
	visitor := FAMIXInvokingMethodsGraphTraverser new.
	methodA accept: visitor.
	self assert: visitor visited size equals: 4.