tests
testElementContentModelBranching
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three' 'four' 'five')),
		'<!ELEMENT root ((one|two),(three|four|five))>]>'.

	self
		shouldnt: [
			SAXHandler
				parse: dtd, '<root><one/><three/></root>';
				parse: dtd, '<root><one/><four/></root>';
				parse: dtd, '<root><one/><five/></root>';
				parse: dtd, '<root><two/><three/></root>';
				parse: dtd, '<root><two/><four/></root>';
				parse: dtd, '<root><two/><five/></root>']
		raise: XMLValidationException.

	self
		should: [SAXHandler parse: dtd, '<root><one/><two/><three/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/><three/><four/><five/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><four/></root>']
		raise: XMLValidationException.