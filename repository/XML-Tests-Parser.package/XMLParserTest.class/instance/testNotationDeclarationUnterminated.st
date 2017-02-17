tests
testNotationDeclarationUnterminated
	#('<!NOTATION'
		'<!NOTATION>'
		'<!NOTATION name'
		'<!NOTATION name>'
		'<!NOTATION name PUBLIC'
		'<!NOTATION name PUBLIC>'
		'<!NOTATION name PUBLIC "'
		'<!NOTATION name PUBLIC ">'
		'<!NOTATION name PUBLIC "pubicid"'
		'<!NOTATION name PUBLIC '''
		'<!NOTATION name PUBLIC ''>'
		'<!NOTATION name PUBLIC ''pubicid'''
		'<!NOTATION name PUBLIC "pubicid''>'
		'<!NOTATION name PUBLIC ''pubicid">'
		'<!NOTATION name SYSTEM'
		'<!NOTATION name SYSTEM>'
		'<!NOTATION name SYSTEM "'
		'<!NOTATION name SYSTEM ">'
		'<!NOTATION name SYSTEM "systemid"'
		'<!NOTATION name SYSTEM '''
		'<!NOTATION name SYSTEM ''>'
		'<!NOTATION name SYSTEM ''systemid'''
		'<!NOTATION name SYSTEM "systemid''>'
		'<!NOTATION name SYSTEM ''systemid">')
		do: [:each |
			self
				should: [SAXHandler parse: '<!DOCTYPE test [', each]
				raise: XMLWellFormednessException.
			self
				should: [SAXHandler parse: '<!DOCTYPE test [', each, ']><test/>']
				raise: XMLWellFormednessException]