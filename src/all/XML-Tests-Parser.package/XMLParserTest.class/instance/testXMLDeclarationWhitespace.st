tests
testXMLDeclarationWhitespace
	#('<? xml version="1.0" encoding="UTF-8" standalone="yes"?>'
		'<?xml version="1.0"standalone="yes"?>'
		'<?xml version="1.0"encoding="UTF-8" standalone="yes"?>'
		'<?xml version="1.0" encoding="UTF-8"standalone="yes"?>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].
	self
		shouldnt: [
			SAXHandler parse:
				'<?xml
					version
					 =
					 "1.0"
					encoding
					 =
					 "UTF-8"	
					standalone
					 =
					 "yes"
					?>
				<test/>']
		raise: XMLWellFormednessException.