tests
testEncodingDeclarationUTF8
	| document |

	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-8'
						andASCIIContentAsUTF16BE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-8'
						andASCIIContentAsUTF16LE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-8'
						andASCIIContentAsUTF32BE: self sourceXML))]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				(self convertableStreamOn:
					(self
						sourceXMLWithEncoding: 'UTF-8'
						andASCIIContentAsUTF32LE: self sourceXML))]
		raise: XMLParserException.

	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					(self convertableStreamOn:
						(self encodingDeclaration: 'UTF-8'), self sourceXML)]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.