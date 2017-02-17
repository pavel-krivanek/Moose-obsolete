tests
testIsFileURI
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		uri scheme = 'file'
			ifTrue: [self assert: uri isFileURI]
			ifFalse: [self deny: uri isFileURI]]