tests
testAttributeDeclarationID
	| dtd |

	dtd := '
		<!DOCTYPE root [
			<!ELEMENT root (unique|unique2)+>
			<!ELEMENT unique EMPTY>
			<!ELEMENT unique2 EMPTY>
			<!ATTLIST unique id ID #REQUIRED>
			<!ATTLIST unique2 id ID #IMPLIED>
		]>'.
	self
		shouldnt: [
			SAXHandler parse:
				dtd,
				'<root>
					<unique id=" one "/><unique id="two"/>
					<unique2 id="three"/>
				</root>']
		raise: XMLValidationException.

	#('<root><unique id="one"/><unique id=" one "/><unique2 id="three"/></root>'
		'<root><unique id="one"/><unique id="two"/><unique2 id=" one "/></root>')
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

	"ID attributes can't have defaults values or #FIXED defaults
	and must be #REQUIRED or #IMPLIED"
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ELEMENT root ANY>
					<!ELEMENT unique EMPTY>
					<!ATTLIST unique id ID #FIXED "one">]>
					<root/>']
		raise: XMLValidationException.
	self
		should: [
			SAXHandler parse:
				'<!DOCTYPE root [
					<!ELEMENT root ANY>
					<!ELEMENT unique EMPTY>
					<!ATTLIST unique id ID "one">]>
					<root/>']
		raise: XMLValidationException.