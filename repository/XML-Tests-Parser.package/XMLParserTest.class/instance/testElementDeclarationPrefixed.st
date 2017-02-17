tests
testElementDeclarationPrefixed
	| dtd |

	dtd := '<!DOCTYPE prefix:root [
		<!ELEMENT prefix:root ANY>
		<!ATTLIST prefix:root xmlns:prefix CDATA #IMPLIED>
		<!ELEMENT unprefixed EMPTY>]>'.
	self
		shouldnt: [SAXHandler parse: dtd, '<prefix:root xmlns:prefix="ns"><unprefixed/></prefix:root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><unprefixed/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<prefix:root xmlns:prefix="ns"><prefix:unprefixed/></prefix:root>']
		raise: XMLValidationException.