tests
testAttributeDeclarationIDRef
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root (unique|ref)+>
			<!ELEMENT unique EMPTY>
			<!ELEMENT ref EMPTY>
			<!ELEMENT refs EMPTY>
			<!ATTLIST unique id ID #REQUIRED>
			<!ATTLIST ref idref IDREF #REQUIRED>
		]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '
				<root>
					<unique id=" one "/><ref idref="one"/>
					<ref idref=" two "/><unique id="two"/>
				</root>']
		raise: XMLValidationException.

	#('<root><unique id="one"/><ref idref="two"/></root>'
		'<root><ref idref="one"/></root>')
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