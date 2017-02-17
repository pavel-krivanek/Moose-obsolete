tests
testAttributeDeclarationNmtoken
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root ANY>
			<!ATTLIST root name NMTOKEN #IMPLIED>
		]>'.
	#('<root name="one"/>'
		'<root name=" two "/>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root name="one two three"/>'
		'<root name="one#"/>'
		'<root name="#"/>'
		'<root name=""/>')
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