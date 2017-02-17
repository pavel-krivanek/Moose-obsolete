tests
testContentlessDocument
	#(''
		' 	'
		'<?xml version="1.0"?>'
		'	<!DOCTYPE test>'
		'	<!DOCTYPE test [<!--comment-->]>'
		'	<!--comment-->'
		'	<?target data?>'
		'<?xml version="1.0"?><!DOCTYPE test>'
		'<?xml version="1.0"?><!DOCTYPE test><!--comment-->'
		'<?xml version="1.0"?><!DOCTYPE test><!--comment--><?pi data?>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException.
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException]