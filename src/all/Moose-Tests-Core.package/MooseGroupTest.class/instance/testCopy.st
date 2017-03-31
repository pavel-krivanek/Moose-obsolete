tests
testCopy
	| group copy |
	group := MooseGroup with: 1.
	copy := group copy.
	self assert: copy ~~ group.
	self assert: copy entities ~~ group entities.
	self assert: copy entities equals: group entities.
	self assert: copy entityStorage ~~ group entityStorage.
	copy add: 2.
	self assert: copy size equals: 2.
	self assert: group size equals: 1