private
nextPutFirstByte: aFirstByte secondByte: aSecondByte toStream: aStream
	aStream
		basicNextPutByte: aFirstByte;
		basicNextPutByte: aSecondByte