generated
interfaceType: aJavaClassTypeNode
	self interfaceType notNil
		ifTrue: [ self interfaceType parent: nil ].
	interfaceType := aJavaClassTypeNode.
	self interfaceType notNil
		ifTrue: [ self interfaceType parent: self ]