tests
testEncoding
	self encodingNamesWithCaseInversions do: [:each |
		self assert:
			(XMLStreamConverter newForEncoding: each) encoding =
				self primaryEncodingName]