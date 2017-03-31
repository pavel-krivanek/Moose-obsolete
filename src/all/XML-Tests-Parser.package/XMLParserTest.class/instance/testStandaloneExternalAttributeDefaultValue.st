tests
testStandaloneExternalAttributeDefaultValue
	| standalone notStandalone dtdTemplate defaultValueStandaloneContent nonDefaultValueStandaloneContent |

	standalone := '<?xml version="1.0" standalone="yes"?>'.
	notStandalone := '<?xml version="1.0" standalone="no"?>'.
	dtdTemplate := '
		<!DOCTYPE test [
			<!ELEMENT test (one,two)>
			<!ELEMENT one EMPTY>
			<!ELEMENT two EMPTY>
			<!ENTITY % extern ''{1}''>
			%extern;
			{2}
		]>'.
	"the attributes defined internally can rely on default values, but
	the standalone externally defined ones can't"
	defaultValueStandaloneContent :=
		'<test><one/><two one="one" two="two" three="one"/></test>'.
	nonDefaultValueStandaloneContent :=
		'<test><one one="one"/><two one="one"/></test>'.
	#(
		#('<!ATTLIST one one CDATA "one">'
				'<!ATTLIST two one CDATA "one">
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three CDATA "one">')
		"ID attributes cannot have default values so are not tested"
		#('<!ATTLIST one one IDREF "one">'
				'<!ATTLIST two one ID #IMPLIED>
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three IDREF "one">')
		#('<!ATTLIST one one IDREFS "one">'
				'<!ATTLIST two one ID #IMPLIED>
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three IDREFS "one">')
		#('<!ATTLIST one one ENTITY "one">'
				'<!NOTATION note PUBLIC "note.txt">
				<!ENTITY one PUBLIC "note.txt" "note.txt" NDATA note>
				<!ATTLIST two one ENTITY "one">
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three ENTITY "one">')
		#('<!ATTLIST one one ENTITIES "one">'
				'<!NOTATION note PUBLIC "note.txt">
				<!ENTITY one PUBLIC "note.txt" "note.txt" NDATA note>
				<!ATTLIST two one ENTITIES "one">
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three ENTITIES "one">')
		#('<!ATTLIST one one NMTOKEN "one">'
				'<!ATTLIST two one NMTOKEN "one">
				<!ATTLIST two two NMTOKEN "two">
				<!ATTLIST two three NMTOKEN "one">')
		#('<!ATTLIST one one NMTOKENS "one">'
				'<!ATTLIST two one NMTOKENS "one">
				<!ATTLIST two two NMTOKENS "two">
				<!ATTLIST two three NMTOKENS "one">')
		#('<!ATTLIST one one (one) "one">'
				'<!ATTLIST two one (one) "one">
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three (one) "one">')
		#('<!ATTLIST one one NOTATION (one) "one">'
				'<!NOTATION one PUBLIC "note.txt">
				<!ATTLIST two one NOTATION (one) "one">
				<!ATTLIST two two CDATA "two">
				<!ATTLIST two three CDATA "one">'))
		do: [:each | | dtd |
			dtd := dtdTemplate format: each.
			self
				should: [SAXHandler parse: standalone, dtd, defaultValueStandaloneContent]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: standalone, dtd, defaultValueStandaloneContent)
						isValidating: false;
						parseDocument]
				raise: XMLValidationException.
			self
				shouldnt: [SAXHandler parse: standalone, dtd, nonDefaultValueStandaloneContent]
				raise: XMLValidationException.

			self
				shouldnt: [SAXHandler parse: notStandalone, dtd, defaultValueStandaloneContent]
				raise: XMLValidationException].