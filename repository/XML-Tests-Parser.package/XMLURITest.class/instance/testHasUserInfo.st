tests
testHasUserInfo
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		uri scheme = 'mailto'
			ifTrue: [self assert: uri hasUserInfo]
			ifFalse: [self deny: uri hasUserInfo]]