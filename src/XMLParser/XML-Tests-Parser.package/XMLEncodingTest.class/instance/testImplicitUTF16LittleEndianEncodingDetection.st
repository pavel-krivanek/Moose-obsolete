tests
testImplicitUTF16LittleEndianEncodingDetection
	| document |

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self asciiToUTF16LE: self sourceXML)]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				(self asciiToUTF16LE: self sourceXML))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.