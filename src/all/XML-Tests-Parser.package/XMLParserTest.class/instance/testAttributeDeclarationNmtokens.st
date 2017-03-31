tests
testAttributeDeclarationNmtokens
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root ANY>
			<!ATTLIST root names NMTOKENS #IMPLIED>
		]>'.
	#('<root names="one"/>'
		'<root names="one two three"/>'
		'<root names=" one "/>'
		'<root names=" one two three "/>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: dtd, each]
				raise: XMLValidationException].

	#('<root names="one two three#"/>'
		'<root names="one#"/>'
		'<root names="#"/>'
		'<root names=""/>')
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