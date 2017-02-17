tests
testHasRootPath
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		each = '/'
			ifTrue: [self assert: uri hasRootPath]
			ifFalse: [self deny: uri hasRootPath]]