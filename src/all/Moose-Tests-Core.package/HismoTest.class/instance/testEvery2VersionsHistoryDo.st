testing - model history
testEvery2VersionsHistoryDo
	testData simpleHistory
		every2VersionsHistoryDo: [ :each | 
			self assert: each size equals: 2.
			self assert: each first < each last.
			self assert: each last > each first ]