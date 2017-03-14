*Famix-Implementation
mooseDisplayStringOn: aStream
	self from ifNotNil: [ self from mooseDisplayStringOn: aStream ].
	aStream nextPutAll: ' -> '.
	self receiver ifNotNil: [ aStream nextPutAll: self receiver name ].
	aStream nextPut: $#.
	aStream nextPutAll: self signature.
	aStream nextPutAll: ' -> '.
	self candidates size = 1
		ifTrue: [ self anyCandidate mooseDisplayStringOn: aStream ]