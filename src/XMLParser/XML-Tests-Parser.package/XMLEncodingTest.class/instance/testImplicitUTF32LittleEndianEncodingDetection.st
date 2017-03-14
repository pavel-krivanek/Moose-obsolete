tests
testImplicitUTF32LittleEndianEncodingDetection
	| document |

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self asciiToUTF32LE: self sourceXML)]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				(self asciiToUTF32LE: self sourceXML))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.