private
nextPutFirstByte: aFirstByte secondByte: aSecondByte thirdByte: aThirdByte fourthByte: aFourthByte toStream: aStream
	aStream
		basicNextPutByte: aFirstByte;
		basicNextPutByte: aSecondByte;
		basicNextPutByte: aThirdByte;
		basicNextPutByte: aFourthByte