tests
testBasic
	| b d1 |
	b := RTGrapher new.
	d1 := RTData new.
	d1 points: #(1 2 3 4).
	
	b add: d1.
	b addDecorator: (RTContinuousDecorator new).
	b build.