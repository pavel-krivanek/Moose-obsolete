tests
testUTF16LittleEndianByteOrderMarkDetection
	| document |

	self
		should: [
			SAXHandler parse:
				self utf16LittleEndianBOM, self sourceXML]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf16LittleEndianBOM, (self asciiToUTF16BE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf16LittleEndianBOM, (self asciiToUTF32BE: self sourceXML)]
		raise: XMLParserException.
	self
		should: [
			SAXHandler parse:
				self utf16LittleEndianBOM, (self asciiToUTF32LE: self sourceXML)]
		raise: XMLParserException.
	self
		shouldnt: [
			document :=
				XMLDOMParser parse:
					self utf16LittleEndianBOM, (self asciiToUTF16LE: self sourceXML)]
		raise: XMLParserException.
	self assertIsDecodedSourceXMLDocument: document.
	self
		should: [
			(SAXHandler on:
				self utf16LittleEndianBOM, (self asciiToUTF16LE: self sourceXML))
					decodesCharacters: false;
					parseDocument]
		raise: XMLParserException.