generated
restElement: aJSRestVariableDeclarationNode
	self restElement notNil
		ifTrue: [ self restElement parent: nil ].
	restElement := aJSRestVariableDeclarationNode.
	self restElement notNil
		ifTrue: [ self restElement parent: self ]