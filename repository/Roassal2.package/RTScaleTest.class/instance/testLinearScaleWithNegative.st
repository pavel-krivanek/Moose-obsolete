tests
testLinearScaleWithNegative

	| s |
	s := RTScale linear 
		domain: #(0 100);
		range: #(-10 -5).
	self assert: (s scale: 50) equals: -15 / 2.
	self assert: (s scale: 0) equals: -10.
	self assert: (s scale: 100) equals: -5.	