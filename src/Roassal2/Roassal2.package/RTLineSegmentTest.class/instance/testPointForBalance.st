tests
testPointForBalance
	self assert: (lineX pointForBalance: 0) equals: lineX from.
	self assert: (lineX pointForBalance: 0.5) equals: (lineX from + lineX to) / 2.
	self assert: (lineX pointForBalance: 1) equals: lineX to.

	self assert: (lineX pointForBalance: 10) equals: lineX from + (10 @ 0).
	self assert: (lineX pointForBalance: 90) equals: lineX to - (10 @ 0).
	self assert: (lineX pointForBalance: -10) equals: lineX to - (10 @ 0)