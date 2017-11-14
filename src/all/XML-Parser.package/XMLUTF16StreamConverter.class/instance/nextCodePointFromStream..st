basic
nextCodePointFromStream: aStream
	| codePoint lowSurrogate |

	(codePoint := self nextTwoBytesFromStream: aStream)
		ifNil: [^ nil].

	"code points U+10000 to U+10FFFF are encoded with surrogate pairs,
	while those < U+10000 are encoded directly"
	(codePoint < 16rD800
		or: [codePoint > 16rDFFF])
		ifTrue: [^ codePoint].

	codePoint > 16rDBFF "max high surrogate"
		ifTrue: [self errorBadCharacterEncoding].
	(lowSurrogate := self nextTwoBytesFromStream: aStream)
		ifNil: [self errorBadCharacterEncoding].
	(lowSurrogate < 16rDC00 "min low surrogate"
		or: [lowSurrogate > 16rDFFF]) "max low surrogate"
		ifTrue: [self errorBadCharacterEncoding].

	"A code point > U+10FFFF isn't checked for here because it can't
	be encoded with UTF-16. The maximum surrogate pairs can encode is:
		(16r10000 + (16r3FF bitShift: 10) + 16r3FF) = 16r10FFFF"
	^ ((codePoint bitAnd: 16r3FF) bitShift: 10) +
		(lowSurrogate bitAnd: 16r3FF) +
		16r10000.