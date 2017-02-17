tests
testExternalSubsetByteOrderMarkDetection
	| content subset |

	content :=
		'<!DOCTYPE encoding-test SYSTEM "extern.dtd">',
		(self sourceXMLWithContent: '&external;').
	subset := '<!ENTITY external "', self sourceContent, '">'.
	(Array
		with: self utf8BOM, subset
		with: self utf16BigEndianBOM, (self asciiToUTF16BE: subset)
		with: self utf16LittleEndianBOM, (self asciiToUTF16LE: subset)
		with: self utf32BigEndianBOM, (self asciiToUTF32BE: subset)
		with: self utf32LittleEndianBOM, (self asciiToUTF32LE: subset))
		do: [:each | | resolver document |
			(resolver := DTDStaticExternalEntityResolver new)
				externalEntityAtURI: 'extern.dtd'
				put: each.
			self
				shouldnt: [
					document :=
						(XMLDOMParser on: content)
							externalEntityResolver: resolver copy;
							resolvesExternalEntities: true;
							parseDocument]
				raise: XMLParserException.
			self assertIsDecodedSourceXMLDocument: document.
			self
				should: [
					(SAXHandler on: content)
						externalEntityResolver: resolver copy;
						resolvesExternalEntities: true;
						decodesCharacters: false;
						parseDocument]
				raise: XMLParserException].