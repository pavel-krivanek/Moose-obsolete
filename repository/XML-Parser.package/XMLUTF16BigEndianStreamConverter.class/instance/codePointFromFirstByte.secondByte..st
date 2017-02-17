private
codePointFromFirstByte: aFirstByte secondByte: aSecondByte
	^ (aFirstByte bitShift: 8) + aSecondByte