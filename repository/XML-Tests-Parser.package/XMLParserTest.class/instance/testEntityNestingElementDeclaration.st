tests
testEntityNestingElementDeclaration
	| xml |
	
	xml := '<!DOCTYPE test SYSTEM "extern.dtd"><test/>'.

	"these are wellformedness exceptions because the replacement is surrounded
	with spaces which interrupt the '<!ELEMENT' sequence"
	#('<!ENTITY % partial "<">%partial;!ELEMENT test EMPTY>'
		'<!ENTITY % partial "<!">%partial;ELEMENT test EMPTY')
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
	#('<!ENTITY % partial "<!ELEMENT">%partial;test EMPTY>'
		'<!ENTITY % partial "<!ELEMENT test">%partial;EMPTY>'
		'<!ENTITY % partial "<!ELEMENT test EMPTY">%partial;>'
		'<!ENTITY % partial ">"><!ELEMENT test EMPTY%partial;'
		'<!ENTITY % partial "EMPTY>"><!ELEMENT test %partial;'
		'<!ENTITY % partial "test EMPTY>"><!ELEMENT %partial;'
		'<!ENTITY % partial "("><!ELEMENT test %partial; #PCDATA)>'
		'<!ENTITY % partial ")"><!ELEMENT test (#PCDATA %partial;>'
		'<!ENTITY % partial "(#PCDATA"><!ELEMENT test %partial;)>'
		'<!ENTITY % partial "#PCDATA)"><!ELEMENT test (%partial;>'
		'<!ENTITY % partial "("><!ELEMENT test %partial; a?)>'
		'<!ENTITY % partial ")"><!ELEMENT test (a? %partial;>'
		'<!ENTITY % partial "(a?"><!ELEMENT test %partial;)>'
		'<!ENTITY % partial "a?)"><!ELEMENT test (%partial;>'
		'<!ENTITY % partial "(a|b"><!ELEMENT test (%partial;))?>'
		'<!ENTITY % partial "a|b)"><!ELEMENT test ((%partial;)?>')
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

	#('<!ENTITY % partial1 "(a|b)">
			<!ENTITY % partial2 "(c,d)">
			<!ENTITY % partial3 "(%partial1;, %partial2;)?">
			<!ENTITY % total "<!ELEMENT test %partial3;>">
			%total;'
		'<!ENTITY % partial1 "a">
			<!ENTITY % partial2 "b">
			<!ENTITY % partial3 "(#PCDATA | %partial1; | %partial2;)*">
			<!ENTITY % total "<!ELEMENT test %partial3;>">
			%total;')
		do: [:each |
			self
				shouldnt: [
					(SAXHandler on: xml)
						externalEntityResolver:
							(DTDStaticExternalEntityResolver externalEntities:
								(Array with: 'extern.dtd' -> each));
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLException].