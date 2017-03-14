tests
testConditionalSectionLabelReplacementIgnore
	| xml dtd |

	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.

	#('<!ENTITY % label "{1}"> <![%label;[ <malformed-xml/> ]]>'
		'<!ENTITY % label "{1}"> <![ %label; [ <malformed-xml/> ]]>')
		do: [:each |
			self
				should: [
					dtd := each format: (Array with: 'INCLUDE').
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> dtd));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException.
			self
				shouldnt: [
					dtd := each format: (Array with: 'IGNORE').
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> dtd));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException].