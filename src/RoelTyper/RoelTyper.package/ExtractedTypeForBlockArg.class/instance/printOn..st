printing
printOn: aStream
	aStream nextPutAll: 'Block arg'; cr;cr.
	lives doWithIndex: [:et :index| 
		aStream nextPutAll: 'Activation ', index printString, ': '.
		et printOn: aStream.
		aStream cr]
	