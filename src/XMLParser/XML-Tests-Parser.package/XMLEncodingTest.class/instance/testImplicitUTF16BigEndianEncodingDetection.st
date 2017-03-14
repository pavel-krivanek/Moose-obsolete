tests
testImplicitUTF16BigEndianEncodingDetection
	| document |

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self asciiToUTF16BE: self sourceXML)]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				(self asciiToUTF16BE: self sourceXML))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.