errors
errorExpectedAttributeValueEnd: aQuote butGot: aCharacter
	aCharacter == $<
		ifTrue: [self parseError: 'Attribute value contains illegal "<" character']
		ifFalse: [
			self
				errorExpectedQuote: aQuote
				ending: 'attribute value'
				butGot: aCharacter]