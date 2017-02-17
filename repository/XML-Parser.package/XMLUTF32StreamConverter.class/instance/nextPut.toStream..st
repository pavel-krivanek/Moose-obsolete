encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	codePoint := self codePointFromCharacter: aCharacter.
	self
		nextPutFirstByte: ((codePoint bitShift: -24) bitAnd: 16rFF)
		secondByte: ((codePoint bitShift: -16) bitAnd: 16rFF)
		thirdByte: ((codePoint bitShift: -8) bitAnd: 16rFF)
		fourthByte: (codePoint bitAnd: 16rFF)
		toStream: aStream.