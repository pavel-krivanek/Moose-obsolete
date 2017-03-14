tests
testConditionalSectionLabelReplacementInclude
	| xml dtd |

	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.
	#('<!ENTITY % label "{1}">
		<![%label;[
			<!ENTITY % comment "<!--comment-->">
		]]> %comment;'
		'<!ENTITY % label "{1}">
		<![ %label; [
			<!ENTITY % comment "<!--comment-->">
		]]> %comment;')
		do: [:each |
			self
				shouldnt: [
					dtd := each format: (Array with: 'INCLUDE').
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> dtd));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException.
			self
				should: [
					dtd := each format: (Array with: 'IGNORE').
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> dtd));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException].