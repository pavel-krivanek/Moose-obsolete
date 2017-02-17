tests
testCDataBadChar
	self nonChars do: [:each |
		self
			should: [SAXHandler parse: '<test><![CDATA[', each asString, ']]>']
			raise: XMLWellFormednessException]