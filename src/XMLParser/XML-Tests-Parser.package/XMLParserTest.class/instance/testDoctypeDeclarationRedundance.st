tests
testDoctypeDeclarationRedundance
	#('<!DOCTYPE test><!DOCTYPE test>'
		'<!DOCTYPE test><!--comment--><!DOCTYPE test>'
		'<!DOCTYPE test><!pi data?><!DOCTYPE test>'
		'<!DOCTYPE test [<!DOCTYPE test>]>'
		'<test><!DOCTYPE test></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].