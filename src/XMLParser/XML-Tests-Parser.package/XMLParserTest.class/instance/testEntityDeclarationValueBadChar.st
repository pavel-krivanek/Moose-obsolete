tests
testEntityDeclarationValueBadChar
	self nonChars do: [:each |
		self
			should: [
				SAXHandler parse:
					'<!DOCTYPE test [
						<!ENTITY name "', each asString, '">
					]><test/>']
			raise: XMLWellFormednessException]