*famix-extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	
	anEntity childNamedEntities do: [:c|
		self addChildNamedEntity: (aVisitor visit: c ) ].
