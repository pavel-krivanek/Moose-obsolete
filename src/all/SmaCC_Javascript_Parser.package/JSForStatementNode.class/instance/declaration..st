generated
declaration: aJSLexicalDeclarationNode
	self declaration notNil
		ifTrue: [ self declaration parent: nil ].
	declaration := aJSLexicalDeclarationNode.
	self declaration notNil
		ifTrue: [ self declaration parent: self ]