tests
testXMLDeclarationRedundance
	#('
<?xml version="1.0"?><test/>'
		' <?xml version="1.0"?><test/>'
		'	<?xml version="1.0"?><test/>'
		'<?xml version="1.0"?><?xml version="1.0"?><test/>'
		'<?xml version="1.0"?><!--comment--><?xml version="1.0"?><test/>'
		'<?xml version="1.0"?><!DOCTYPE test [<?xml version="1.0"?>]><test/>'
		'<?xml version="1.0"?><test><?xml version="1.0"?></test>'
		'<test><?xml version="1.0"?></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].