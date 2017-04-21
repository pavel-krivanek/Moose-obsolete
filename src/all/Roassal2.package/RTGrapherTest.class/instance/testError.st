tests
testError
	| g d |
	self should: [
		g := RTGrapher new.
		d := RTData new.
		d points: (0.0 to: 5.0 by: 0.1).
		d y: #yourself.
		g add: g.
		g build. ] raise: AssertionFailure