tests
testDoctypeDeclarationInContent
	self
		should: [SAXHandler parse: '<test><!DOCTYPE test></test>']
		raise: XMLWellFormednessException.
	self
		shouldnt: [SAXHandler parse: '<!DOCTYPE test><test></test>']
		raise: XMLWellFormednessException.