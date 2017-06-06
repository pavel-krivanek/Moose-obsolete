generated
varParameter: aJSProgramNode
	self varParameter notNil
		ifTrue: [ self varParameter parent: nil ].
	varParameter := aJSProgramNode.
	self varParameter notNil
		ifTrue: [ self varParameter parent: self ]