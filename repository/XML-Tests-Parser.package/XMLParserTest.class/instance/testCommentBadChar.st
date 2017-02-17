tests
testCommentBadChar
	self nonChars do: [:each |
		self
			should: [SAXHandler parse: '<!--', each asString, '-->']
			raise: XMLWellFormednessException]