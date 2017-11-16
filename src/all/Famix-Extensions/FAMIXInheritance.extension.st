Extension { #name : #FAMIXInheritance }

{ #category : #'*Famix-Extensions' }
FAMIXInheritance >> accept: aVisitor [

	aVisitor visitInheritance: self
]

{ #category : #'*Famix-Extensions' }
FAMIXInheritance >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self superclass: (aVisitor visit: anEntity superclass).
	self subclass: (aVisitor visit: anEntity subclass).
]
