tests
testNumberOfTicksAndLabels03

	self assert: config numberOfLabels equals: 4.
	
	config numberOfTicks: 3.
	"Cannot have more labels than ticks"
	self assert: config numberOfLabels equals: 3.
	