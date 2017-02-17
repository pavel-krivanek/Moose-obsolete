tests
testHasQuery
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		(each includes: $?)
			ifTrue: [self assert: uri hasQuery]
			ifFalse: [self deny: uri hasQuery]]