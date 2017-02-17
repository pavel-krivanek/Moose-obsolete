comparing
= anotherNode
	super = anotherNode ifFalse: [ ^ false ].
	^ self methodDeclarations = anotherNode methodDeclarations