*Famix-Implementation
mooseNameOn: aStream
	"aStream nextPutAll: 'Reference'."

	self from ifNotNil: [ aStream nextPutAll: self from name ].
	aStream nextPutAll: ' refers to '.
	self to ifNotNil: [ aStream nextPutAll: self to name ]