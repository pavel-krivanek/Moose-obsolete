tests
testXMLDeclarationVersionAttribute
	#('<?xml version=""?>'
		'<?xml version="1"?>'
		'<?xml version="1."?>'
		'<?xml version="1.0."?>'
		'<?xml version="1.0.1"?>'
		'<?xml version="10"?>'
		'<?xml version="10."?>'
		'<?xml version="10.00."?>'
		'<?xml version="10.00.10"?>'
		'<?xml version="one"?>'
		'<?xml version="one."?>'
		'<?xml version="one.zero."?>'
		'<?xml version="one.zero.one"?>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].

	#('<?xml version="1.0"?>'
		'<?xml version="1.1"?>'
		'<?xml version="1.00"?>'
		'<?xml version="1.10"?>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].