tokenizing
nextXMLStandaloneAttributeValue
	| quote yesOrNo nextChar |

	((quote := streamReader next) == $"
		or: [quote == $'])
		ifFalse: [self errorExpectedXMLStandaloneValueStartButGot: quote].

	yesOrNo := 
		streamReader peek == $y
			ifTrue: [self expectNextAll: 'yes']
			ifFalse: [self expectNextAll: 'no'].

	(nextChar := streamReader next) == quote
		ifFalse: [
			self
				errorExpectedXMLStandaloneValueEnd: quote
				butGot: nextChar].

	^ yesOrNo.