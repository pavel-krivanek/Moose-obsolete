tests
testEntityURIInheritance
	| xml parser driver |

	xml := '<!DOCTYPE root [%first;]><root xml:base="/new/xml">&second;</root>'.
	parser :=
		(SAXHandler
			on: xml
			documentURI: 'test.xml') parser.
	(driver := parser driver)
		doctypeDefinition parameterEntities
			at: 'first'
			put:
				((DTDExternalParameterParsedEntity name: 'first')
					resolvedReplacement:
						(DTDDecodedResolvedExternalParsedEntityReplacement contents:
							'<!ENTITY second "<!--comment-->">');
					uri: 'test.ent').

	self assert: driver baseURI = 'test.xml'.

	3 timesRepeat: [parser parseToken].
	self assert: driver baseURI = 'test.ent'.

	2 timesRepeat: [parser parseToken].
	self assert: driver baseURI = 'test.xml'.
	
	"internal entities (declared in the internal subset or in an external DTD)
	can't change abase URI according to the xml:base spec"
	2 timesRepeat: [parser parseToken].
	self assert: driver baseURI = '/new/xml'.

	3 timesRepeat: [parser parseToken].
	self
		assert: driver baseURI = 'test.xml';
		assert: parser atEnd.