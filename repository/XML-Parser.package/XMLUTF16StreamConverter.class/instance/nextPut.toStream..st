encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := self codePointFromCharacter: aCharacter) < 16r10000
		ifTrue: [
			self
				nextPutFirstByte: ((codePoint bitShift: -8) bitAnd: 16rFF)
				secondByte: (codePoint bitAnd: 16rFF)
				toStream: aStream]
		ifFalse: [| difference |
			difference := codePoint - 16r10000.
			"the 10 high-order bits (2 + 16rD8 then the next 8 high-order bits)"
			self
				nextPutFirstByte: 16rD8 + ((difference bitShift: -18) bitAnd: 16r03)
				secondByte: ((difference bitShift: -10) bitAnd: 16rFF)
				toStream: aStream.
			"the 10 low-order bits (2 + 16rDC then the next 8 low-order bits)"
			self
				nextPutFirstByte: 16rDC + ((difference bitShift: -8) bitAnd: 16r03)
				secondByte: (difference bitAnd: 16rFF)
				toStream: aStream]