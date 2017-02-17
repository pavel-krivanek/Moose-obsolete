tests
testStepOnXAxis

	b := RTGrapher new.
	b add: (RTData new points: #(1 2 3); yourself).
	b axisXWithNumberOfTicks: 2.
	b build.
	self assert: b getAxisX step equals: 3 / 2.