tests
testNewForEncoding
	self encodingNamesWithCaseInversions do: [:each |
		(XMLStreamConverter newForEncoding: each) class ==
			self streamConverterClass]