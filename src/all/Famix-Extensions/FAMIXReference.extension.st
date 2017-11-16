Extension { #name : #FAMIXReference }

{ #category : #'*Famix-Extensions' }
FAMIXReference >> accept: aVisitor [

	aVisitor visitReference: self
]

{ #category : #'*Famix-Extensions' }
FAMIXReference >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self source: (aVisitor visit: anEntity source).
	self target: (aVisitor visit: anEntity target).
]
