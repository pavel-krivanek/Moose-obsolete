tests
testAttributeDeclarationIDRefs
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root (unique|ref)+>
			<!ELEMENT unique EMPTY>
			<!ELEMENT ref EMPTY>
			<!ELEMENT refs EMPTY>
			<!ATTLIST unique id ID #REQUIRED>
			<!ATTLIST ref idrefs IDREFS #REQUIRED>
		]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd, '
				<root>
					<unique id=" one "/><ref idrefs="one"/>
					<ref idrefs=" two "/><ref idrefs="one two"/>
					<ref idrefs=" two one "/><unique id="two"/>
				</root>']
		raise: XMLValidationException.

	#('<root><unique id="one"/><ref idrefs="one two"/></root>'
		'<root><ref idrefs="one"/></root>')
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