testing - model history
testInheritanceHistoriesCreation
	self assert: testData simpleHistory allInheritanceDefinitionHistories size equals: 5.
	self
		assert: testData simpleHistory allInheritanceDefinitionHistories printString
		equals: 'All Inheritance Definition Histories (5 HismoInheritanceDefinitionHistories)'.
	testData simpleHistory allInheritanceDefinitionHistories
		do: [ :each | 
			self assert: (testData simpleHistory allClassHistories includes: each superHistory).
			self assert: (testData simpleHistory allClassHistories includes: each subHistory) ]