generated
receiver: aJavaProgramNode
	self receiver notNil
		ifTrue: [ self receiver parent: nil ].
	receiver := aJavaProgramNode.
	self receiver notNil
		ifTrue: [ self receiver parent: self ]