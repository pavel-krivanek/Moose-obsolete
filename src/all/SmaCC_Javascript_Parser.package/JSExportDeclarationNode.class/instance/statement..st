generated
statement: aJSProgramNode
	self statement notNil
		ifTrue: [ self statement parent: nil ].
	statement := aJSProgramNode.
	self statement notNil
		ifTrue: [ self statement parent: self ]