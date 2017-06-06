generated
pattern: aJSProgramNode
	self pattern notNil
		ifTrue: [ self pattern parent: nil ].
	pattern := aJSProgramNode.
	self pattern notNil
		ifTrue: [ self pattern parent: self ]