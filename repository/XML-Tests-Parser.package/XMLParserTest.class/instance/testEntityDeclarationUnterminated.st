tests
testEntityDeclarationUnterminated
	#('<!ENTITY'
		'<!ENTITY>'
		'<!ENTITY name'
		'<!ENTITY name>'
		'<!ENTITY name "'
		'<!ENTITY name ">'
		'<!ENTITY name "value'
		'<!ENTITY name "value"'
		'<!ENTITY name '''
		'<!ENTITY name ''>'
		'<!ENTITY name ''value'
		'<!ENTITY name ''value'''
		'<!ENTITY name "value''>'
		'<!ENTITY name ''value">'
		'<!ENTITY name PUBLIC'
		'<!ENTITY name PUBLIC>'
		'<!ENTITY name PUBLIC "'
		'<!ENTITY name PUBLIC ">'
		'<!ENTITY name PUBLIC "publicid"'
		'<!ENTITY name PUBLIC "publicid">'
		'<!ENTITY name PUBLIC '''
		'<!ENTITY name PUBLIC ''>'
		'<!ENTITY name PUBLIC ''publicid'''
		'<!ENTITY name PUBLIC ''publicid''>'
		'<!ENTITY name PUBLIC "publicid''>'
		'<!ENTITY name PUBLIC ''publicid">'
		'<!ENTITY name PUBLIC "publicid" "'
		'<!ENTITY name PUBLIC "publicid" ">'
		'<!ENTITY name PUBLIC "publicid" "systemid'
		'<!ENTITY name PUBLIC "publicid" "systemid"'
		'<!ENTITY name PUBLIC "publicid" '''
		'<!ENTITY name PUBLIC "publicid" ''>'
		'<!ENTITY name PUBLIC "publicid" ''systemid'
		'<!ENTITY name PUBLIC "publicid" ''systemid'''
		'<!ENTITY name PUBLIC "publicid" "systemid''>'
		'<!ENTITY name PUBLIC "publicid" ''systemid">'
		'<!ENTITY name SYSTEM'
		'<!ENTITY name SYSTEM>'
		'<!ENTITY name SYSTEM "'
		'<!ENTITY name SYSTEM ">'
		'<!ENTITY name SYSTEM "systemid'
		'<!ENTITY name SYSTEM "systemid"'
		'<!ENTITY name SYSTEM '''
		'<!ENTITY name SYSTEM ''>'
		'<!ENTITY name SYSTEM ''systemid'
		'<!ENTITY name SYSTEM ''systemid'''
		'<!ENTITY name SYSTEM "systemid''>'
		'<!ENTITY name SYSTEM ''systemid">'
		'<!ENTITY name SYSTEM "systemid''>'
		'<!ENTITY name SYSTEM ''systemid">')
		do: [:each |
			self
				should: [
					SAXHandler parse:
						'<!DOCTYPE test [
							<!NOTATION gif SYSTEM "file.gif">',
							each]
				raise: XMLWellFormednessException.
			self
				should: [
					SAXHandler parse:
						'<!DOCTYPE test [
							<!NOTATION gif SYSTEM "file.gif">',
							each,
						']><test/>']
				raise: XMLWellFormednessException].