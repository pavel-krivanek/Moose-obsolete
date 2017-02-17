tests
testEntityNestingIgnoreSection
	"If any of the '<![', '[', or ']]>' of a conditional section is contained
	in the replacement text for a parameter-entity reference, all of them
	MUST be contained in the same replacement text."
	| xml |
	
	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.

	"these are wellformedness exceptions because the replacement is surrounded
	with spaces which interrupt the '<![' and ']]>' sequences"
	#('<!ENTITY % partial "<">%partial;![IGNORE[<!--ignore-->]]>'
		'<!ENTITY % partial "<!">%partial;[IGNORE[<!--ignore-->]]>'
		'<!ENTITY % partial "<![IGNORE[<!--ignore-->]">%partial;]>'
		'<!ENTITY % partial "<![IGNORE[<!--ignore-->]]">%partial;>')
		do: [:each |
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						isValidating: false;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException].

	"these are validity exceptions"
	#('<!ENTITY % partial "<![">%partial;IGNORE[<!--ignore-->]]>'
		'<!ENTITY % partial "<![IGNORE">%partial;[<!--ignore-->]]>'
		'<!ENTITY % partial "<![IGNORE[">%partial;<!--ignore-->]]>'
		'<!ENTITY % partial "<![IGNORE[<!--ignore-->">%partial;]]>'
		'<!ENTITY % partial "IGNORE["><![%partial;<!--ignore-->]]>'
		'<!ENTITY % partial "IGNORE[<!--ignore-->"><![%partial;]]>'
		'<!ENTITY % partial "IGNORE[<!--ignore-->]]>"><![%partial;')
		do: [:each |
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						isValidating: false;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLException].
	self
		shouldnt: [| dtd |
			dtd := '
				<!ENTITY % partial "IGNORE">
				<!ENTITY % total "<![%partial;[<!--ignore-->]]]]]>">
				%total;'.
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> dtd));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLException.