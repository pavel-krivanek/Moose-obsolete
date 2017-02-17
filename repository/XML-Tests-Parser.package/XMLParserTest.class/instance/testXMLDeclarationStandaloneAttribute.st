tests
testXMLDeclarationStandaloneAttribute
	#('<?xml version="1.0" standalone=""?>'
		'<?xml version="1.0" standalone="YES"?>'
		'<?xml version="1.0" standalone="Yes"?>'
		'<?xml version="1.0" standalone=" yes "?>'
		'<?xml version="1.0" standalone="NO"?>'
		'<?xml version="1.0" standalone="No"?>'
		'<?xml version="1.0" standalone=" no "?>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].

	#('<?xml version="1.0" standalone="no"?>'
		'<?xml version="1.0" standalone="yes"?>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].