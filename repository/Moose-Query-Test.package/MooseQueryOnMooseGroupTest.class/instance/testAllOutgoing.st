tests
testAllOutgoing
	| methGroup classGroup |
	methGroup := FAMIXMethodGroup withAll: (self model entities select: #isMethod).
	self assert: methGroup queryAllOutgoing size equals: 6.
	classGroup := FAMIXClassGroup withAll: (self model entities select: #isClass).
	self assert: classGroup queryAllOutgoing size equals: 7