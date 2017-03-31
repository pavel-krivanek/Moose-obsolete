RTGrapherDecorationExample new installTitle: 'RangeBelowXAxis' 
		code:
		'
	| b d |
	b := RTGrapher new.
	d := RTData new.
	d points: (1 to: 5).
	d y: #yourself.
	b add: d.
	b addDecorator: (RTRangeBelowXAxis new startValue: 2.5; endValue: 4; label: ''A'').
	b addDecorator: (RTRangeBelowXAxis new startValue: 0; endValue: 2; label: ''B'').
	^ b'
	