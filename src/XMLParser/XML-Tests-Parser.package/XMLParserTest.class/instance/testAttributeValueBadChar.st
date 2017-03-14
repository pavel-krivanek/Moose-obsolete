tests
testAttributeValueBadChar
	self nonChars do: [:each |
		self
			should: [SAXHandler parse: '<test name="', each asString, '"/>']
			raise: XMLWellFormednessException]