tests
testAllOutgoing
	self assert: method2 queryAllOutgoing size equals: 2.
	self assert: class2 queryAllOutgoing size equals: 3