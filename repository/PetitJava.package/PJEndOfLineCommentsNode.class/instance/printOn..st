as yet unclassified
printOn: aStream
	^	aStream 
		nextPutAll: 'EndOfLineComment value ==> ';
		nextPutAll: self comment.
 
