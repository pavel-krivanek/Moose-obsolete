as yet unclassified
printOn: aStream
	aStream nextPutAll: '('.
	self name printOn: aStream.
	aStream nextPutAll: ','.
	self address printOn: aStream.
	aStream nextPutAll: ')'.
	self exampleSupportIdentityInSample 
		ifTrue: [ aStream nextPutAll: ' #original# '] 
		ifFalse: [ aStream nextPutAll: ' #copy# '].
	super printOn: aStream.