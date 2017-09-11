tests
testLegendLabel
	| b d1 deco |
	b := RTGrapher new.
	d1 := RTData new.
	d1 points: #(1 2 3 4).
	
	b add: d1.
	deco := RTContinuousDecorator new.
	deco legendLabel text: 'Test'.
	b addDecorator: deco.
	b build.