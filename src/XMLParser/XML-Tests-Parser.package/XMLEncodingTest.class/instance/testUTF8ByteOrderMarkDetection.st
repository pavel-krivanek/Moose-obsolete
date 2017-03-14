tests
testUTF8ByteOrderMarkDetection
	| document |

	self
		should: [
			SAXHandler parse:
				self utf8BOM, (self asciiToUTF16BE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf8BOM, (self asciiToUTF16LE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf8BOM, (self asciiToUTF32BE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf8BOM, (self asciiToUTF32LE: self sourceXML)]
		raise: XMLParserException.
	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					self utf8BOM, self sourceXML]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				self utf8BOM, self sourceXML)
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.