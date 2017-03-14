private
nextPutFirstByte: aFirstByte secondByte: aSecondByte toStream: aStream
	aStream
		basicNextPutByte: aSecondByte;
		basicNextPutByte: aFirstByte