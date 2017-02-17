test - scaling
testScaling04

	| ds1 ds2 |
	b := RTGrapher new.
	ds1 := RTData new.
	ds1 points: (1 to: 10).
	ds1 xLog.
	b add: ds1.

	ds2 := RTData new.
	ds2 points: (1 to: 10).
	ds2 xLinear.
	b add: ds2.
	
	self should: [ b xScale ] raise: Error.
	self shouldnt: [ b yScale ] raise: Error