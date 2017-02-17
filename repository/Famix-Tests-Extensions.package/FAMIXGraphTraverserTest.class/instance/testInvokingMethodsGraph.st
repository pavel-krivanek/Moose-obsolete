as yet unclassified
testInvokingMethodsGraph
	| visitor |
	visitor := FAMIXInvokingMethodsGraphTraverser new.
	methodNeverInvoked accept: visitor.
	self assert: visitor visited size equals: 1.
	self assert: visitor graph nodes size equals: 1.
	self assert: visitor graph nodes first model equals: visitor visited anyOne.
	self assert: visitor graph nodes first isLeaf.
	self assert: visitor graph nodes first isRoot.
	visitor := FAMIXInvokingMethodsGraphTraverser new.
	methodA accept: visitor.
	self assert: visitor visited size equals: 2.
	self assert: visitor graph nodes size equals: 2.
	visitor graph nodes do: [ :each | self assert: (visitor visited includes: each model) ].
	self assert: visitor graph nodes last isLeaf.
	self assert: visitor graph nodes first isLeaf not.
	self assert: visitor graph nodes last isRoot not.
	self assert: visitor graph nodes first isRoot.
	visitor := FAMIXInvokingMethodsGraphTraverser new.
	methodD accept: visitor.
	self assert: visitor visited size equals: 4.
	self assert: visitor graph nodes size equals: 4.
	visitor graph nodes do: [ :each | self assert: (visitor visited includes: each model) ]