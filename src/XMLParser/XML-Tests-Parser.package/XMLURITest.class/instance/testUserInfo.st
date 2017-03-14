tests
testUserInfo
	self allURIStringsDo: [:each | | uri |
		uri := each asXMLURI.
		uri scheme = 'mailto'
			ifTrue: [self assert: uri userInfo = 'userName']
			ifFalse: [self assert: uri userInfo = '']]