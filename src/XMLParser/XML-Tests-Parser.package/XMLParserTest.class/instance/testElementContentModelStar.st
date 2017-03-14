tests
testElementContentModelStar
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three' 'four' 'five')),
		'<!ELEMENT root ((one?,two)*,(three)*,four,five*)>]>'.

	self
		shouldnt: [
			SAXHandler
				parse: dtd, '<root><one/><two/><three/><four/><five/></root>';
				parse: dtd, '<root><two/><one/><two/><three/><four/><five/></root>';
				parse: dtd, '<root><three/><three/><four/><five/></root>';
				parse: dtd, '<root><four/><five/><five/></root>';
				parse: dtd, '<root><four/></root>']
		raise: XMLValidationException.

	self
		should: [SAXHandler parse: dtd, '<root><three/></root>']
		raise: XMLValidationException.