Extension { #name : #FAMIXAccess }

{ #category : #'*Famix-Extensions' }
FAMIXAccess >> accept: aVisitor [

	aVisitor visitAccess: self
]

{ #category : #'*Famix-Extensions' }
FAMIXAccess >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self isWrite: anEntity isWrite.
	self accessor: (aVisitor visit: anEntity accessor).
	self variable: (aVisitor visit: anEntity variable).
]
