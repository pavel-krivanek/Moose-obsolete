Extension { #name : #FAMIXImplicitVariable }

{ #category : #'*Famix-Extensions' }
FAMIXImplicitVariable >> accept: aVisitor [
	aVisitor visitImplicitVariable: self
]

{ #category : #'*Famix-Extensions' }
FAMIXImplicitVariable >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self container: (aVisitor visit: anEntity container).

]
