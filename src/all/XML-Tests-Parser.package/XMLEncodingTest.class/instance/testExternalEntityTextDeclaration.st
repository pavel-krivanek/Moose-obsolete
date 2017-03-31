tests
testExternalEntityTextDeclaration
	| content entity |

	content :=
		'<!DOCTYPE encoding-test [
				<!ENTITY external SYSTEM "extern.ent">
			]>', (self sourceXMLWithContent: '&external;').
	entity := self sourceContent.
	(Array
		with:
			(self
				sourceXMLWithEncoding: 'UTF-16-BE'
				andASCIIContentAsUTF16BE: entity)
		with:
			(self
				sourceXMLWithEncoding: 'UTF-16-LE'
				andASCIIContentAsUTF16LE: entity)
		with:
			(self
				sourceXMLWithEncoding: 'UTF-32-BE'
				andASCIIContentAsUTF32BE: entity)
		with:
			(self
				sourceXMLWithEncoding: 'UTF-32-LE'
				andASCIIContentAsUTF32LE: entity))
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