Extension { #name : #FAMIXComment }

{ #category : #'*Famix-Extensions' }
FAMIXComment >> accept: aVisitor [

	aVisitor visitComment: self
]

{ #category : #'*Famix-Extensions' }
FAMIXComment >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self content: anEntity content copy
]
