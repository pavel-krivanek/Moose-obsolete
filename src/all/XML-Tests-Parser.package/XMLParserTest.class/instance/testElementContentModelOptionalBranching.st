tests
testElementContentModelOptionalBranching
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three' 'four' 'five' 'six')),
		'<!ELEMENT root (((one,two)|(three,four)),five?)>]>'.

	self
		shouldnt: [
			SAXHandler
				parse: dtd, '<root><one/><two/><five/></root>';
				parse: dtd, '<root><three/><four/><five/></root>';
				parse: dtd, '<root><one/><two/></root>';
				parse: dtd, '<root><three/><four/></root>']
		raise: XMLValidationException.

	self
		should: [SAXHandler parse: dtd, '<root><three/><five/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/><five/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><five/></root>']
		raise: XMLValidationException.