decoding
nextFromStream: aStream
	"an attempt was made at porting Bjoern Hoehrmann's DFA-based decoder
	(with transitions pre-multiplied by 16), but it was slightly slower
	than this implementation and needed significant modification to report
	errors the same way, so it was scrapped"

	| firstByte codePoint |

	aStream basicNext
		ifNil: [^ nil]
		ifNotNil: [:firstChar |
			(firstByte := firstChar asciiValue) < 16r80 "single byte character"
				ifTrue: [^ firstChar]].

	codePoint :=
		self
			nextMultiByteCodePointStartingWith: firstByte
			fromStream: aStream.
	[codePoint == 16rFEFF] "the BOM code point"
		whileTrue: [
			aStream basicNext
				ifNil: [^ nil]
				ifNotNil: [:firstChar |
					(firstByte := firstChar asciiValue) < 16r80 "single byte character"
						ifTrue: [^ firstChar]].
			codePoint :=
				self
					nextMultiByteCodePointStartingWith: firstByte
					fromStream: aStream].

	^ Character value: codePoint.