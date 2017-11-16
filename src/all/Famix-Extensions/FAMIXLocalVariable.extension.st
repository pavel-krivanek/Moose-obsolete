Extension { #name : #FAMIXLocalVariable }

{ #category : #'*Famix-Extensions' }
FAMIXLocalVariable >> accept: aVisitor [

	aVisitor visitLocalVariable: self
]
