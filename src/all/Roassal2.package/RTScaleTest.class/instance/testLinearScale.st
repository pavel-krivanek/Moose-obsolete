tests
testLinearScale

	| s |
	s := RTScale linear 
		domain: #(0 100);
		range: #(5 10).
	self assert: (s scale: 50) equals: 15 / 2.
	self assert: (s scale: 0) equals: 5.
	self assert: (s scale: 100) equals: 10.	