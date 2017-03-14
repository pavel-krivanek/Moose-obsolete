tests
testXMLVersionEncodingStandalone
	| parser selectors arguments |

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<?xml version="1.0" encoding="UTF-8"?><test/>')
		parseDocument.
	selectors :=
		#(startDocument
			xmlVersion:encoding:standalone:
			startElement:prefix:uri:localName:attributes:
			endElement:prefix:uri:localName:
			endDocument).
	self assert: (parser wasSentSelectors: selectors).

	arguments := parser argumentsSentWith: #xmlVersion:encoding:standalone:.
	self
		assert: arguments first = 1.0;
		assert: arguments second = 'UTF-8';
		deny: arguments third.

	(parser :=
		SAXRecordingPrefixURILocalNameHandler on:
			'<?xml version="1.1" encoding="utf-8" standalone="yes"?><test/>')
		parseDocument.
	self assert: (parser wasSentSelectors: selectors).

	arguments := (parser argumentsSentWith: #xmlVersion:encoding:standalone:).
	self
		assert: arguments first = 1.1;
		assert: arguments second = 'utf-8';
		assert: arguments third.