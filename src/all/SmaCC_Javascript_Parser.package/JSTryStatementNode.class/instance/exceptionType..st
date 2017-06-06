generated
exceptionType: aJSProgramNode
	self exceptionType notNil
		ifTrue: [ self exceptionType parent: nil ].
	exceptionType := aJSProgramNode.
	self exceptionType notNil
		ifTrue: [ self exceptionType parent: self ]