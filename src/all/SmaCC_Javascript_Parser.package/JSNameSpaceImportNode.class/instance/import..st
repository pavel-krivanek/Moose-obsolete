generated
import: aJSNameExpressionNode
	self import notNil
		ifTrue: [ self import parent: nil ].
	import := aJSNameExpressionNode.
	self import notNil
		ifTrue: [ self import parent: self ]