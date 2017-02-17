tests
testPrintOn
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		self assert: uri printString = each.

		uri
			parseURIStringIfUnparsed;
			uriString: nil.
		self
			assert: uri uriString isNil;
			assert: uri printString = each;
			assert: uri uriString = each]