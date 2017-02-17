tests
testExternalSubsetTextDeclaration
	| content subset |

	content :=
		'<!DOCTYPE encoding-test SYSTEM "extern.dtd">',
		(self sourceXMLWithContent: '&external;').
	subset := '<!ENTITY external "', self sourceContent, '">'.
	(Array
		with:
			(self
				sourceXMLWithEncoding: 'UTF-16-BE'
				andASCIIContentAsUTF16BE: subset)
		with:
			(self
				sourceXMLWithEncoding: 'UTF-16-LE'
				andASCIIContentAsUTF16LE: subset)
		with:
			(self
				sourceXMLWithEncoding: 'UTF-32-BE'
				andASCIIContentAsUTF32BE: subset)
		with:
			(self
				sourceXMLWithEncoding: 'UTF-32-LE'
				andASCIIContentAsUTF32LE: subset))
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