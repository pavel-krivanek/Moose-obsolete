tokenizing
nextCharacterReferenceOnCharacterStream
	"returns the character written to 'characterStream' or $& if
	it wasn't replaced"
	| codePoint |

	"skip #"
	streamReader next.
	(state isContentState
		and: [driver replacesContentEntityReferences not])
		ifTrue: [
			nameStream reset.
			(codePoint := streamReader nextIntegerPrintedOn: nameStream)
				ifNil: [self errorExpectedIntegerCharacterReference].
			(self characterFromCodePoint: codePoint)
				ifNil: [self errorInvalidCharacterReferenceCodePoint: codePoint].
			self expectNext: $;.
			characterStream
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
			characterStream nextPut: character.
			^ character].