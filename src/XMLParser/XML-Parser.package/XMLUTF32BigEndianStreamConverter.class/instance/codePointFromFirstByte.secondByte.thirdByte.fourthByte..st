private
codePointFromFirstByte: aFirstByte secondByte: aSecondByte thirdByte: aThirdByte fourthByte: aFourthByte
	^ self characterFromCodePoint:
		(aFirstByte bitShift: 24) +
		(aSecondByte bitShift: 16) +
		(aThirdByte bitShift: 8) +
		aFourthByte