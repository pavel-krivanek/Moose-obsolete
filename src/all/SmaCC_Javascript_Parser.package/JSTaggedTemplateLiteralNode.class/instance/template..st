generated
template: aJSTemplateLiteralNode
	self template notNil
		ifTrue: [ self template parent: nil ].
	template := aJSTemplateLiteralNode.
	self template notNil
		ifTrue: [ self template parent: self ]