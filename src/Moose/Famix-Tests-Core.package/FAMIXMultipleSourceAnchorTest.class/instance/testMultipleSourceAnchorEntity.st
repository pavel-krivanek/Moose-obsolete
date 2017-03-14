as yet unclassified
testMultipleSourceAnchorEntity
	| class |
	class := FAMIXClass new mooseModel: MooseModel new; defineMultiSourceAnchorWithPath: 'aClassName'.
	self assert: class sourceAnchor allFiles size equals: 1.