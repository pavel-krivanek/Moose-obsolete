tests
testCanConvertEncoding
	self encodingNamesWithCaseInversions do: [:each |
		self assert: (self streamConverterClass canConvertEncoding: each)].
	self unconvertableEncodingNames do: [:each |
		self deny: (self streamConverterClass canConvertEncoding: each)].