tests
testLogarithmScale

	| s |
	s := RTScale log
		base: Float e; 
		domain: (#(0 9) collect: #exp);
		range: #(200 0).
	self assert: ((s scale: 50) closeTo: 113.06615543493011).
	self assert: ((s scale: 0.01) closeTo: 302.3371152441798).
	self assert: ((s scale: 100) closeTo: 97.66288475582019).
	
	self assert: ((s invert: 10) closeTo: 5166.754427175983)