Extension { #name : #FAMIXParameter }

{ #category : #'*Famix-Extensions' }
FAMIXParameter >> accept: aVisitor [

	aVisitor visitParameter: self
]

{ #category : #'*Famix-Extensions' }
FAMIXParameter >> parentType [
	^self parentBehaviouralEntity parentType
]
