tests
testConditionalSectionUnterminatedIgnore
	| xml |

	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.
	#('<![IGNORE['
		'<![IGNORE[<!--comment-->'
		'<![IGNORE[<!--comment--><![IGNORE['
		'<![IGNORE[<!--comment--><![IGNORE[ ]]>')
		do: [:each |
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException]