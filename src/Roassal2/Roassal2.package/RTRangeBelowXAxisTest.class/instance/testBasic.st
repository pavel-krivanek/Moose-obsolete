tests
testBasic

	| r |
	r := RTRangeBelowXAxis new.
	self assert: r startValue equals: 0.
	self assert: r endValue equals: 1.
	self assert: r markerColor equals: r defaultMarkerColor.