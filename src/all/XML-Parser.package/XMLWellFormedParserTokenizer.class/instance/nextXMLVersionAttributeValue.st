tokenizing
nextXMLVersionAttributeValue
	| quote nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedXMLVersionValueStartButGot: quote].

	xmlDeclarationStream
		reset;
		nextPut: self expectNextVersionDigit;
		nextPut: (self expectNext: $.);
		nextPut: self expectNextVersionDigit.

	[(nextChar := streamReader next) == nil
		or: [(VersionDigitChars includes: nextChar) not]]
		whileFalse: [xmlDeclarationStream nextPut: nextChar].

	nextChar == quote
		ifFalse: [
			self
				errorExpectedXMLVersionValueEnd: quote
				butGot: nextChar].

	^ xmlDeclarationStream contents.