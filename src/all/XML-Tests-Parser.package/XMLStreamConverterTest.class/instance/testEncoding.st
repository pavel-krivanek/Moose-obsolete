tests
testEncoding
	self encodingNames do: [:each | | streamConverter |
		streamConverter := XMLStreamConverter newForEncoding: each.
		self assert: streamConverter class == self streamConverterClass.
		self assert:
			streamConverter encoding =
				self streamConverterClass primaryEncodingName]