tests
testBasic

	| numbers distribution values |
	numbers := #(5 2 1 8 1 2 4 8 1 9 7 3 7).
	distribution := RTDistribution on: numbers.
	values := distribution frequencyMin: 1 max: 9 amountOfIntervals: 3.
	
	self assert: values size = 3.
	self assert: values first asSortedCollection = ((numbers select: [ :n | n < 4 ]) asSortedCollection).
	self assert: values second asSortedCollection = ((numbers select: [ :n | n >= 4 and: [ n < 6 ] ]) asSortedCollection).
	self assert: values third asSortedCollection = ((numbers select: [ :n | n >= 6 ]) asSortedCollection).