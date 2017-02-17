*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	anEntity globalVariables do: [ :glv | 
		self addGlobalVariable: (aVisitor visit: glv) ].
	anEntity childScopes do: [ :cs | 
		self addChildScope: (aVisitor visit: cs) ].
	anEntity functions do: [ :f | "empty loop in smalltalk models"
		self addFunction: (aVisitor visit: f) ].