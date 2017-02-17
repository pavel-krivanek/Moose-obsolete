tests
testExternalEntityImplicitEncodingDetection
	| content entity |

	content :=
		'<!DOCTYPE encoding-test [
				<!ENTITY external SYSTEM "extern.ent">
			]>', (self sourceXMLWithContent: '&external;').
	entity := self sourceContent.
	(Array
		with: (self asciiToUTF16BE: entity)
		with: (self asciiToUTF16LE: entity)
		with: (self asciiToUTF32BE: entity)
		with: (self asciiToUTF32LE: entity))
		do: [:each | | resolver document |
			(resolver := DTDStaticExternalEntityResolver new)
				externalEntityAtURI: 'extern.ent'
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