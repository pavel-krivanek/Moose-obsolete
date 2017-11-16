Extension { #name : #FAMIXAssociation }

{ #category : #'*Famix-Extensions' }
FAMIXAssociation >> accept: aVisitor [

	aVisitor visitAssociation: self
]

{ #category : #'*Famix-Extensions' }
FAMIXAssociation >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	"self previous: (aVisitor visit: anEntity previous)."
]
