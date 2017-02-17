tests
testNumberOfFormalParameters
	| method |
	method := self model entityNamed: acceptNodeName.
	self assert: method numberOfParameters equals: 1.
	method := self model entityNamed: canOriginateNodeName.
	self assert: method numberOfParameters equals: 0