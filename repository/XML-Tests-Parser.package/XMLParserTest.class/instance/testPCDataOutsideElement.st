tests
testPCDataOutsideElement
	#('<!DOCTYPE test [ test ]><test/>'
		'test<test/>'
		'	test<test/>'
		'<test/>test'
		'<test/>	test')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException]