tests
testElementContentModelOptionalEmpty
	| dtd |

	dtd := '<!DOCTYPE root [',
		(self elementDeclarationsNamed: #('one' 'two' 'three')),
		'<!ELEMENT root (one?,two)?>]>'.

	self
		shouldnt: [
			SAXHandler
				parse: dtd, '<root><one/><two/></root>';
				parse: dtd, '<root><two/></root>';
				parse: dtd, '<root></root>']
		raise: XMLValidationException.

	self
		should: [SAXHandler parse: dtd, '<root><one/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><three/></root>']
		raise: XMLValidationException.
	self
		should: [SAXHandler parse: dtd, '<root><one/><one/></root>']
		raise: XMLValidationException.