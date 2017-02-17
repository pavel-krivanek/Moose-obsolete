tests
testAttributeDeclarationEntity
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!NOTATION first SYSTEM "first.txt">
			<!NOTATION second SYSTEM "second.txt">
			<!ENTITY firstEntity SYSTEM "first.txt" NDATA first>
			<!ENTITY secondEntity SYSTEM "second.txt" NDATA second>
			<!ELEMENT root EMPTY>
			<!ATTLIST root unparsedEntity ENTITY #IMPLIED>
		]>'.
	#('<root unparsedEntity="firstEntity" />'
		'<root unparsedEntity=" secondEntity " />')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root unparsedEntity="thirdEntity" />'
		'<root unparsedEntity="" />')
		do: [:each |
			self
				should: [SAXHandler parse: dtd, each]
				raise: XMLValidationException.
			self
				shouldnt: [
					(SAXHandler on: dtd, each)
						isValidating: false;
						parseDocument]
				raise: XMLValidationException].