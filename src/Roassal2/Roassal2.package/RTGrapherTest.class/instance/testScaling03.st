test - scaling
testScaling03

	| ds1 ds2 |
	b := RTGrapher new.
	ds1 := RTData new.
	ds1 points: (1 to: 10).
	ds1 yLog.
	b add: ds1.

	ds2 := RTData new.
	ds2 points: (1 to: 10).
	ds2 yLinear.
	b add: ds2.
	
	self should: [ b yScale ] raise: Error