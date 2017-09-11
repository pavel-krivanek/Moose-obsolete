generated
parameter: aJavaCatchParameterNode
	self parameter notNil
		ifTrue: [ self parameter parent: nil ].
	parameter := aJavaCatchParameterNode.
	self parameter notNil
		ifTrue: [ self parameter parent: self ]