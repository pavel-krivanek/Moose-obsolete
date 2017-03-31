tests
testAsString
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		self assert: uri asString = uri printString]