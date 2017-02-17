tests
testIsXMLNCName
	self badNCNames do: [:each |
		self deny: each isXMLNCName]