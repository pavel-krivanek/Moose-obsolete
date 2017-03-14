tests
testUTF16BigEndianByteOrderMarkDetection
	| document |

	self
		should: [
			SAXHandler parse:
				self utf16BigEndianBOM, self sourceXML]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf16BigEndianBOM, (self asciiToUTF16LE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf16BigEndianBOM, (self asciiToUTF32BE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf16BigEndianBOM, (self asciiToUTF32LE: self sourceXML)]
		raise: XMLParserException.
	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					self utf16BigEndianBOM, (self asciiToUTF16BE: self sourceXML)]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				self utf16BigEndianBOM, (self asciiToUTF16BE: self sourceXML))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.