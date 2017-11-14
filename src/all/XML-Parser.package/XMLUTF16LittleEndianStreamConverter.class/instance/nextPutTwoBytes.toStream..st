basic
nextPutTwoBytes: anInteger toStream: aStream
	aStream
		basicNextPutByte: (anInteger bitAnd: 16rFF);
		basicNextPutByte: ((anInteger bitShift: -8) bitAnd: 16rFF)