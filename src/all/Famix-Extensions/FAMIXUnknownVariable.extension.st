Extension { #name : #FAMIXUnknownVariable }

{ #category : #'*Famix-Extensions' }
FAMIXUnknownVariable >> accept: aVisitor [

	aVisitor visitUnknownVariable: self
]

{ #category : #'*Famix-Extensions' }
FAMIXUnknownVariable >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self container: (aVisitor visit: anEntity container).

]
