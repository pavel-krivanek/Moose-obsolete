tests
testBasic

	| charter |
	charter := RTGrapher new.
	charter add: (RTData new points: #(#(1 2) #(3 4) #(2 5)); x: #first; y: #second).
	charter build.