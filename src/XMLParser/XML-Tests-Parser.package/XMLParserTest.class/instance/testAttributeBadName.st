tests
testAttributeBadName
	self badNames do: [:each |
		self
			should: [SAXHandler parse: '<test ', each, '="value"/>']
			raise: XMLWellFormednessException]