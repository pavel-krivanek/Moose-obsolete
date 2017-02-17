tests
testIsXMLName
	self nonNCNameNames do: [:each |
		self assert: each isXMLName].
	self badNames do: [:each |
		self deny: each isXMLName].