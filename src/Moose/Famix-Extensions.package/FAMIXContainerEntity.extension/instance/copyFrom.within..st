*Famix-Extensions
copyFrom: anEntity within: aVisitor

	super copyFrom: anEntity within: aVisitor.
	anEntity types do: [:t|
		self addType: (aVisitor visit: t) ].

	