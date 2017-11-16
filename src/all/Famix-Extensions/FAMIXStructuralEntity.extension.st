Extension { #name : #FAMIXStructuralEntity }

{ #category : #'*Famix-Extensions' }
FAMIXStructuralEntity >> accept: aVisitor [

	aVisitor visitStructuralEntity: self
]

{ #category : #'*Famix-Extensions' }
FAMIXStructuralEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self declaredType: (aVisitor visit: anEntity declaredType).

]

{ #category : #'*Famix-Extensions' }
FAMIXStructuralEntity >> hasDeclaredType [
	^ self declaredType notNil
]

{ #category : #'*Famix-Extensions' }
FAMIXStructuralEntity >> isSharedVariable [

	^ false
]
