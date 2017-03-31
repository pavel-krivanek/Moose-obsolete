*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	self signature: anEntity signature copy.
	self declaredType: (aVisitor visit: anEntity declaredType).
	
	anEntity localVariables do: [ :var | 
		self addLocalVariable: (aVisitor visit: var) ].
	anEntity parameters do: [ :par | 
		self addParameter: (aVisitor visit: par) ].
	anEntity outgoingInvocations do: [ :inv | 
		aVisitor visit: inv ].
	anEntity accesses do: [ :acc | 
		aVisitor visit: acc ].
	anEntity outgoingReferences do: [:r|
		aVisitor visit: r ]