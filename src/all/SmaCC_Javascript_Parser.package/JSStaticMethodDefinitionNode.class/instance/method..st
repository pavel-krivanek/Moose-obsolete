generated
method: aJSMethodDefinitionNode
	self method notNil
		ifTrue: [ self method parent: nil ].
	method := aJSMethodDefinitionNode.
	self method notNil
		ifTrue: [ self method parent: self ]