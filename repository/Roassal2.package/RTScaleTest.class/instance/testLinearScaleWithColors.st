tests
testLinearScaleWithColors

	| s |
	s := RTScale linear 
		domain: #(0 100);
		range: (Array with: Color white with: Color black).
	self assert: (s scale: 50) equals: Color gray.
	self assert: (s scale: 0) equals: Color white.
	self assert: (s scale: 100) equals: Color black.	