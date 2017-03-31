tests
testTitleBlock
	| dm |
	dm := DistributionMap new.
	self assert: (dm elementTitleBlock value: 'My default name') equals: 'My default name'.
	dm elementTitleBlock: [ :each | 'My new element name' ].
	self assert: (dm elementTitleBlock value: 'asd') equals: 'My new element name'