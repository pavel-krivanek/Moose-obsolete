tests
testAttributeDeclarationEntities
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!NOTATION first SYSTEM "first.txt">
			<!NOTATION second SYSTEM "second.txt">
			<!ENTITY firstEntity SYSTEM "first.txt" NDATA first>
			<!ENTITY secondEntity SYSTEM "second.txt" NDATA second>
			<!ELEMENT root EMPTY>
			<!ATTLIST root unparsedEntities ENTITIES #IMPLIED>
		]>'.
	#('<root unparsedEntities="firstEntity" />'
		'<root unparsedEntities=" secondEntity " />'
		'<root unparsedEntities="firstEntity secondEntity" />'
		'<root unparsedEntities=" firstEntity secondEntity " />')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root unparsedEntities="firstEntity secondEntity thirdEntity" />'
		'<root unparsedEntities="thirdEntity" />'
		'<root unparsedEntities="" />')
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