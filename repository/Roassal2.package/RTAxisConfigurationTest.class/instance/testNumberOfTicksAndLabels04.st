tests
testNumberOfTicksAndLabels04
	
	config numberOfTicks: 3.
	self assert: config numberOfLabels equals: 3.
	
	config numberOfLabels: 2.
	self assert: config numberOfTicks equals: 3.
	self assert: config numberOfLabels equals: 2.
	
	config numberOfLabels: 5.
	self assert: config numberOfTicks equals: 5.
	self assert: config numberOfLabels equals: 5.