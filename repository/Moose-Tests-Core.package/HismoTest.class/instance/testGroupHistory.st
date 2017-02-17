testing - history group
testGroupHistory
	"This test checks that all the group are from the right type of group"
	
	self assert: testData simpleHistory allClassHistories class equals: HismoClassHistoryGroup.
	self assert: testData simpleHistory allMethodHistories class equals:  HismoMethodHistoryGroup.
	self assert: testData simpleHistory allNamespaceHistories class equals:  HismoNamespaceHistoryGroup.
	self assert: testData simpleHistory allPackageHistories class equals: HismoHistoryGroup.
	self assert: testData simpleHistory allAttributeHistories class equals: HismoHistoryGroup