sources
exampleLinesAndBars
	| b d |
	b := RTGrapher new.

	d := RTData new.
	d points: #(3 4 3.5).
	d barShape.
	b add: d.
	
	d := RTData new.
	d points: #(3 4 3.5).
	d connectColor: Color red.
	b add: d.
	b maxX: 5.
	b axisX
		numberOfLabels: 5;
		noDecimal.
	^ b