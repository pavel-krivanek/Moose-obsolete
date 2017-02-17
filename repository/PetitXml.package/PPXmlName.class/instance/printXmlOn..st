printing
printXmlOn: aStream
	prefix isNil
		ifFalse: [ aStream nextPutAll: prefix; nextPut: $: ].
	aStream nextPutAll: local