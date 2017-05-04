decoding
nextFromStream: aStream
	| codePoint |

	codePoint := self nextCodePointFromStream: aStream.
	[codePoint == 16rFEFF] "the BOM code point"
		whileTrue: [codePoint := self nextCodePointFromStream: aStream].
	^ codePoint
		ifNotNil: [Character value: codePoint].