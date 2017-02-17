tests
testIsAxisDefined

	b := RTGrapher new.
	b add: (RTData new points: #(1 2 3); x: #yourself; y: #yourself).
	
	self deny: b isXAxisDefined.
	self deny: b isYAxisDefined.
	
	b axisXWithNumberOfTicks: 2.
	self assert: b isXAxisDefined.
	self deny: b isYAxisDefined.

	b axisY.
	self assert: b isXAxisDefined.
	self assert: b isYAxisDefined.

	b build.
	self assert: b getAxisX step equals: 3 / 2.