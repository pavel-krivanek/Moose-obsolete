tests
testEncodingDeclarationUTF32BE
	| document |

	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self encodingDeclaration: 'UTF-32-BE'), self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-32-BE'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-32-BE'
						andASCIIContentAsUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-32-BE'
						andASCIIContentAsUTF32LE: self sourceXML))]
		raise: XMLParserException.

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self convertableStreamOn:
						(self
							sourceXMLWithEncoding: 'UTF-32-BE'
							andASCIIContentAsUTF32BE: self sourceXML))]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-32-BE'
						andASCIIContentAsUTF32BE: self sourceXML)))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.