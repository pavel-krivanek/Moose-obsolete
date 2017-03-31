as yet unclassified
printOn: aStream
	^	aStream 
		nextPutAll: 'comment value ==> ';
		nextPutAll: self comment.
  