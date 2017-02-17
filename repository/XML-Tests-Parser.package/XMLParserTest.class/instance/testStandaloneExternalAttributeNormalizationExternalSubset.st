tests
testStandaloneExternalAttributeNormalizationExternalSubset
	| standalone notStandalone dtdTemplate dtd unnormalizedStandaloneContent normalizedStandaloneContent resolver |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtdTemplate := '
		<!DOCTYPE test SYSTEM "extern.dtd" [
			<!ELEMENT test (one,two)>
			<!ELEMENT one EMPTY>
			<!ELEMENT two EMPTY>
			{1}
		]>'.
	"the attributes defined internally can require further normalization, but
	the standalone externally defined ones can't"
	unnormalizedStandaloneContent :=
		'<test><one one=" one "/><two one="one" two="two" three="one"/></test>'.
	normalizedStandaloneContent :=
		'<test><one one="one"/><two one=" one " two=" two " three=" one "/></test>'.
	resolver := DTDStaticExternalEntityResolver new.
	#(
		#('<!ATTLIST one one ID #IMPLIED>'
				'<!ATTLIST two one CDATA #IMPLIED>
				<!ATTLIST two two ID #IMPLIED>
				<!ATTLIST two three CDATA #IMPLIED>')
		#('<!ATTLIST one one IDREF #IMPLIED>'
				'<!ATTLIST two one ID #IMPLIED>
				<!ATTLIST two two CDATA #IMPLIED>
				<!ATTLIST two three IDREF #IMPLIED>')
		#('<!ATTLIST one one IDREFS #IMPLIED>'
				'<!ATTLIST two one ID #IMPLIED>
				<!ATTLIST two two CDATA #IMPLIED>
				<!ATTLIST two three IDREFS #IMPLIED>')
		#('<!ATTLIST one one ENTITY #IMPLIED>'
				'<!NOTATION note PUBLIC "note.txt">
				<!ENTITY one PUBLIC "note.txt" "note.txt" NDATA note>
				<!ATTLIST two one ENTITY #IMPLIED>
				<!ATTLIST two two CDATA #IMPLIED>
				<!ATTLIST two three ENTITY #IMPLIED>')
		#('<!ATTLIST one one ENTITIES #IMPLIED>'
				'<!NOTATION one PUBLIC "note.txt">
				<!ENTITY one PUBLIC "note.txt" "note.txt" NDATA one>
				<!ATTLIST two one ENTITIES #IMPLIED>
				<!ATTLIST two two CDATA #IMPLIED>
				<!ATTLIST two three ENTITIES #IMPLIED>')
		#('<!ATTLIST one one NMTOKEN #IMPLIED>'
				'<!ATTLIST two one NMTOKEN #IMPLIED>
				<!ATTLIST two two NMTOKEN #IMPLIED>
				<!ATTLIST two three NMTOKEN #IMPLIED>')
		#('<!ATTLIST one one NMTOKENS #IMPLIED>'
				'<!ATTLIST two one NMTOKENS #IMPLIED>
				<!ATTLIST two two NMTOKENS #IMPLIED>
				<!ATTLIST two three NMTOKENS #IMPLIED>')
		#('<!ATTLIST one one (one) #IMPLIED>'
				'<!ATTLIST two one (one) #IMPLIED>
				<!ATTLIST two two (two) #IMPLIED>
				<!ATTLIST two three (one) #IMPLIED>')
		#('<!ATTLIST one one NOTATION (one) #IMPLIED>'
				'<!NOTATION one PUBLIC "note.txt">
				<!ATTLIST two one NOTATION (one) #IMPLIED>
				<!ATTLIST two two CDATA #IMPLIED>
				<!ATTLIST two three CDATA #IMPLIED>'))
		do: [:each |
			(resolver := resolver copy)
				externalEntityAtURI: 'extern.dtd'
				put: each first.
			dtd := dtdTemplate format: (Array with: each second).
			self
				should: [
					(SAXHandler on: standalone, dtd, unnormalizedStandaloneContent)
						externalEntityResolver: resolver copy;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: standalone, dtd, unnormalizedStandaloneContent)
						externalEntityResolver: resolver copy;
						resolvesExternalEntities: true;
						isValidating: false;
						parseDocument]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: standalone, dtd, normalizedStandaloneContent)
						externalEntityResolver: resolver copy;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException.

			self
				shouldnt: [
					(SAXHandler on: notStandalone, dtd, unnormalizedStandaloneContent)
						externalEntityResolver: resolver copy;
						resolvesExternalEntities: true;
						parseDocument]
				raise: XMLValidationException].

	"CDATA is never further normalized, so standalone external doesn't affect it"
	(resolver := resolver copy)
		externalEntityAtURI: 'extern.dtd'
		put:
			'<!ATTLIST two one CDATA #IMPLIED>
			<!ATTLIST two two CDATA #IMPLIED>
			<!ATTLIST two three CDATA #IMPLIED>'.
	dtd := dtdTemplate format: #('<!ATTLIST one one CDATA #IMPLIED>').
	self
		shouldnt: [
			(SAXHandler on: standalone, dtd, unnormalizedStandaloneContent)
				externalEntityResolver: resolver copy;
				resolvesExternalEntities: true;
				parseDocument]
		raise: XMLValidationException.