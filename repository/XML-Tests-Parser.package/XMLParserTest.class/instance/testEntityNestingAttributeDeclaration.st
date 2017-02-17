tests
testEntityNestingAttributeDeclaration
	| xml |
	
	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.

	"these are wellformedness exceptions because the replacement is surrounded with
	spaces which interrupt the '<!ATTLIST' sequence"
	#('<!ELEMENT test EMPTY>
		<!ENTITY % partial "<">
		%partial;!ATTLIST test name CDATA #IMPLIED>'
		'<!ELEMENT test EMPTY>
		<!ENTITY % partial "<!">
		%partial;ATTLIST test name CDATA #IMPLIED')
		do: [:each |
			self
				should: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLWellFormednessException].

	"these are validity exceptions"
	#('<!ELEMENT test EMPTY>
			<!ENTITY % partial "<!ATTLIST">
			%partial; test name CDATA #IMPLIED>'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "<!ATTLIST test">
			%partial; name CDATA #IMPLIED>'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "<!ATTLIST test name">
			%partial; CDATA #IMPLIED>'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "<!ATTLIST test name CDATA">
			%partial; #IMPLIED>'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "<!ATTLIST test name CDATA #IMPLIED">
			%partial;>'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial ">">
			<!ATTLIST test name CDATA #IMPLIED %partial;'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "#IMPLIED>">
			<!ATTLIST test name CDATA %partial;'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "CDATA #IMPLIED>">
			<!ATTLIST test name %partial;'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "name CDATA #IMPLIED>">
			<!ATTLIST test %partial;'
		'<!ELEMENT test EMPTY>
			<!ENTITY % partial "test name CDATA #IMPLIED>">
			<!ATTLIST %partial;')
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
				<!ELEMENT test EMPTY>
				<!ENTITY % total "<!ATTLIST test name CDATA #IMPLIED>">
				%total;'.
			(SAXHandler on: xml)
				externalEntityResolver:
					(DTDStaticExternalEntityResolver externalEntities:
						(Array with: 'extern.dtd' -> dtd));
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLException.