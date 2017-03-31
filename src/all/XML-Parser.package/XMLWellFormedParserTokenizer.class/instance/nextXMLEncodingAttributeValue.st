tokenizing
nextXMLEncodingAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedXMLEncodingValueStartButGot: quote].

	((nextChar := streamReader next) notNil
		and: [EncodingNameStartChars includes: nextChar])
		ifFalse: [self errorExpectedEncodingName].
	declarationStream
		reset;
		nextPut: nextChar.
	[(nextChar := streamReader next) == nil
		or: [(EncodingNameChars includes: nextChar) not]]
		whileFalse: [declarationStream nextPut: nextChar].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedXMLEncodingValueEnd: quote
				butGot: nextChar].

	^ declarationStream contents.