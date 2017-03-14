test - scaling
testScaling01

	| ds1 |
	b := RTGrapher new.
	ds1 := RTData new.
	ds1 points: (1 to: 10).
	ds1 yLog.
	b add: ds1.

	self assert: b yScale equals: ds1 yScale