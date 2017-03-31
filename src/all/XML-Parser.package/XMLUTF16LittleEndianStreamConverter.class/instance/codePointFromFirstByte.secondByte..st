private
codePointFromFirstByte: aFirstByte secondByte: aSecondByte
	^ (aSecondByte bitShift: 8) + aFirstByte