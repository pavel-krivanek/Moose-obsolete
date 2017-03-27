assertions
assertList: aList copiedFrom: aSecondList hasNode: aNode
	self
		assertList: aList
		copiedFrom: aSecondList
		hasNodes: (Array with: aNode)