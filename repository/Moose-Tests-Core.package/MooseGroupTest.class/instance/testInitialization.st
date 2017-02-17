tests
testInitialization
	| group1 group2 |
	group1 := MooseGroup with: 1.
	group2 := MooseGroup with: 1 withDescription: 'Group number 2'.
	self assert: group1 entities equals: group2 entities.
	self assert: group2 description equals: 'Group number 2'.
	self assert: group1 description equals: 'Group'