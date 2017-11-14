basic
nextPutFourBytes: anInteger toStream: aStream
	aStream
		basicNextPutByte: ((anInteger bitShift: -24) bitAnd: 16rFF);
		basicNextPutByte: ((anInteger bitShift: -16) bitAnd: 16rFF);
		basicNextPutByte: ((anInteger bitShift: -8) bitAnd: 16rFF);
		basicNextPutByte: (anInteger bitAnd: 16rFF)