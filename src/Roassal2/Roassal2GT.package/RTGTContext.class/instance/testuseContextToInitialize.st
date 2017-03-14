tests
testuseContextToInitialize

	self assert: view announcer numberOfSubscriptions = 0.
	prez useContextToInitialize: view.
	self assert: view announcer numberOfSubscriptions > 0