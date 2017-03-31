printing
printXmlOn: aStream
	aStream nextPut: $<.
	name printXmlOn: aStream.
	self attributes do: [ :each |
		aStream nextPut: $ .
		each printXmlOn: aStream ].
	self children isEmpty
		ifTrue: [ aStream nextPutAll: ' />' ]
		ifFalse: [
			aStream nextPut: $>.
			super printXmlOn: aStream.
			aStream nextPutAll: '</'.
			name printXmlOn: aStream.
			aStream nextPut: $> ]