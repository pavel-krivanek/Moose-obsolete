private
nextPutFirstByte: aFirstByte secondByte: aSecondByte thirdByte: aThirdByte fourthByte: aFourthByte toStream: aStream
	aStream
		basicNextPutByte: aFourthByte;
		basicNextPutByte: aThirdByte;
		basicNextPutByte: aSecondByte;
		basicNextPutByte: aFirstByte