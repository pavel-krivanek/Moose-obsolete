generated
element: aJSVariableDeclarationNode
	self element notNil
		ifTrue: [ self element parent: nil ].
	element := aJSVariableDeclarationNode.
	self element notNil
		ifTrue: [ self element parent: self ]