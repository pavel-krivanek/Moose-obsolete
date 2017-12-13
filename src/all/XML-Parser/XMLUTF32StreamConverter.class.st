"
An abstract class for UTF-32 stream converters.
"
Class {
	#name : #XMLUTF32StreamConverter,
	#superclass : #XMLUTFStreamConverter,
	#category : #'XML-Parser-Streams'
}

{ #category : #testing }
XMLUTF32StreamConverter >> isBigEndian [
	self subclassResponsibility
]

{ #category : #basic }
XMLUTF32StreamConverter >> nextCodePointFromStream: aStream [
	| codePoint |

	(codePoint := self nextFourBytesFromStream: aStream)
		ifNil: [^ nil].

	"check for the reserved surrogate pair code points and code points
	greater than the max code point"
	codePoint >= 16rD800
		ifTrue: [
			(codePoint <= 16rDFFF
				or: [codePoint > 16r10FFFF])
				ifTrue: [self errorBadCharacterValue: codePoint]].

	^ codePoint.
]

{ #category : #basic }
XMLUTF32StreamConverter >> nextFourBytesFromStream: aStream [
	self subclassResponsibility
]

{ #category : #encoding }
XMLUTF32StreamConverter >> nextPut: aCharacter toStream: aStream [
	| codePoint |

	codePoint := aCharacter asciiValue.
	"check for the reserved surrogate pair code points and code points
	greater than the max code point"
	(codePoint >= 16rD800
		and: [codePoint <= 16rDFFF
			or: [codePoint > 16r10FFFF]])
		ifTrue: [self errorBadCharacterValue: codePoint].
	self
		nextPutFourBytes: codePoint
		toStream: aStream.
]

{ #category : #basic }
XMLUTF32StreamConverter >> nextPutFourBytes: anInteger toStream: aStream [
	self subclassResponsibility
]