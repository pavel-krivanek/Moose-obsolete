tokenizing
nextCharacterReferenceOnCharacterDataStream
	"returns the character written to the stream or $& if it wasn't replaced"
	| codePoint |

	"skip #"
	streamReader next.
	(context isContentContext
		and: [driver replacesContentEntityReferences not])
		ifTrue: [
			nameStream reset.
			(codePoint := streamReader nextIntegerPrintedOn: nameStream)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self expectNext: $;.
			characterDataStream
				nextPutAll: '&#';
				nextPutAll: nameStream contents;
				nextPut: $;.
			^ $&]
		ifFalse: [| character |
			(codePoint := streamReader nextInteger)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(character := self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self expectNext: $;.
			characterDataStream nextPut: character.
			^ character].