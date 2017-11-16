Extension { #name : #FAMIXContainerEntity }

{ #category : #'*Famix-Extensions' }
FAMIXContainerEntity >> accept: aVisitor [

	aVisitor visitContainerEntity: self
]

{ #category : #'*Famix-Extensions' }
FAMIXContainerEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	anEntity types do: [:t|
		self addType: (aVisitor visit: t) ].

	
]
