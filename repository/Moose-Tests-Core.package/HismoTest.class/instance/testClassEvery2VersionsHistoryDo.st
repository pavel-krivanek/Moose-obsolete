testing - class history
testClassEvery2VersionsHistoryDo
	(testData simpleHistory allClassHistories entityNamed: #aNamespace::ClassA)
		every2VersionsHistoryDo: [ :each | 
			self assert: each size equals: 2.
			self assert: each first < each last ]