Extension { #name : #FAMIXInvocation }

{ #category : #'*Famix-Implementation' }
FAMIXInvocation >> isInvocation [ 	
	^true
]

{ #category : #'*Famix-Implementation' }
FAMIXInvocation >> mooseDisplayStringOn: aStream [
	self from ifNotNil: [ self from mooseDisplayStringOn: aStream ].
	aStream nextPutAll: ' -> '.
	self receiver ifNotNil: [ aStream nextPutAll: self receiver name ].
	aStream nextPut: $#.
	aStream nextPutAll: self signature.
	aStream nextPutAll: ' -> '.
	self candidates size = 1
		ifTrue: [ self anyCandidate mooseDisplayStringOn: aStream ]
]

{ #category : #'*Famix-Implementation' }
FAMIXInvocation >> printOn: aStream [
	super printOn: aStream.
	aStream nextPut: $#.
	aStream << self signature.
	aStream << ' (Invocation)'
]
