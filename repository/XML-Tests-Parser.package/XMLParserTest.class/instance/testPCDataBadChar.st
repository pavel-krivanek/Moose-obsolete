tests
testPCDataBadChar
	self nonChars do: [:each |
		self
			should: [SAXHandler parse: '<test>', each asString, '</test>']
			raise: XMLWellFormednessException]