generated
label: aJSNameExpressionNode
	self label notNil
		ifTrue: [ self label parent: nil ].
	label := aJSNameExpressionNode.
	self label notNil
		ifTrue: [ self label parent: self ]