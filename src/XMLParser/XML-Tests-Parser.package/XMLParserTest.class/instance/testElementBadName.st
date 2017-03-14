tests
testElementBadName
	self badNames do: [:each |
		self
			should: [SAXHandler parse: '<', each, '/>']
			raise: XMLWellFormednessException].