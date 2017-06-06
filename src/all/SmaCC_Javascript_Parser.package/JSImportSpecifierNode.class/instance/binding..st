generated
binding: aJSNameExpressionNode
	self binding notNil
		ifTrue: [ self binding parent: nil ].
	binding := aJSNameExpressionNode.
	self binding notNil
		ifTrue: [ self binding parent: self ]