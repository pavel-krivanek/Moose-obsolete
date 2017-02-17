tests
testConditionalSectionUnterminatedInclude
	| xml |

	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.
	#('<![INCLUDE['
		'<![INCLUDE[<!--comment-->'
		'<![INCLUDE[<!--comment--><![INCLUDE['
		'<![INCLUDE[<!--comment--><![INCLUDE[ ]]>')
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