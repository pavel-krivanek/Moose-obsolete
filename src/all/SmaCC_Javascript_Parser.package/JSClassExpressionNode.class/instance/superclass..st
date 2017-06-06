generated
superclass: aJSExpressionNode
	self superclass notNil
		ifTrue: [ self superclass parent: nil ].
	superclass := aJSExpressionNode.
	self superclass notNil
		ifTrue: [ self superclass parent: self ]