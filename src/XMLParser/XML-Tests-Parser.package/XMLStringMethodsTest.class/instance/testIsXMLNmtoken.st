tests
testIsXMLNmtoken
	self nonNCNameNames do: [:each |
		self assert: each isXMLNmtoken].
	self nonNameNmtokens do: [:each |
		self assert: each isXMLNmtoken].
	self badNmtokens do: [:each |
		self deny: each isXMLNmtoken].