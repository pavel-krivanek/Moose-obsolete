Extension { #name : #FAMIXLeafEntity }

{ #category : #'*Famix-Extensions' }
FAMIXLeafEntity >> accept: aVisitor [

	aVisitor visitLeafEntity: self
]
