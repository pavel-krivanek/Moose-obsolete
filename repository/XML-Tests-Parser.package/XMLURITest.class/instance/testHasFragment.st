tests
testHasFragment
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		(each includes: $#)
			ifTrue: [self assert: uri hasFragment]
			ifFalse: [self deny: uri hasFragment]]