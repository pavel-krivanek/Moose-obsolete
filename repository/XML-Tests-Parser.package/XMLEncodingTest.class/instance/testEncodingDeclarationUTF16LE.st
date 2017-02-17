tests
testEncodingDeclarationUTF16LE
	| document |

	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self encodingDeclaration: 'UTF-16-LE'), self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16-LE'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16-LE'
						andASCIIContentAsUTF32BE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16-LE'
						andASCIIContentAsUTF32LE: self sourceXML))]
		raise: XMLParserException.

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self convertableStreamOn:
						(self
							sourceXMLWithEncoding: 'UTF-16-LE'
							andASCIIContentAsUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-16-LE'
						andASCIIContentAsUTF16LE: self sourceXML)))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.