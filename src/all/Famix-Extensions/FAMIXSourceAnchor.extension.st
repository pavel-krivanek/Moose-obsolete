Extension { #name : #FAMIXSourceAnchor }

{ #category : #'*Famix-Extensions' }
FAMIXSourceAnchor >> accept: aVisitor [

	aVisitor visitSourceAnchor: self
]

{ #category : #'*Famix-Extensions' }
FAMIXSourceAnchor >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self element: (aVisitor visit: anEntity)
]
