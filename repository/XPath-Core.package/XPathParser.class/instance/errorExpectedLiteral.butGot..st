private
errorExpectedLiteral: anExpectedCharacterOrString butGot: aReceivedCharacterOrString
	XPathSyntaxException
		formatSignal: 'Expected "{1}" but got "{2}"'
		with: anExpectedCharacterOrString
		with: (aReceivedCharacterOrString ifNil: [''])