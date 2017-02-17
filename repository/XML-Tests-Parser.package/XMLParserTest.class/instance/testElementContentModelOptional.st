tests
testElementContentModelOptional
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three' 'four' 'five')),
		'<!ELEMENT root (one?,two,three?,(four?, five)?)>]>'.

	self
		shouldnt: [
			SAXHandler
				parse: dtd, '<root><one/><two/><three/><four/><five/></root>';
				parse: dtd, '<root><two/><three/></root>';
				parse: dtd, '<root><one/><two/><three/><five/></root>';
				parse: dtd, '<root><two/></root>';
				parse: dtd, '<root><one/><two/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/><three/><four/><five/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/><two/><three/><four/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/><two/><three/><five/><four/></root>']
		raise: XMLValidationException.