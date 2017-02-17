tests
testCount
	self assert: (self twoClasses count: [ :el | el class == FAMIXClass ]) equals: 2