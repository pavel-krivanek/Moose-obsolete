test labels
testAxesWithOFffsetPosition
	| ds center |
	b := RTGrapher new.
	b yOffset: 30.
	b minX: 1.
	ds := RTData new.
	ds points: #(3 -3).
	b add: ds.
	b build.
	center := b getPixelPositionOf: 0 @ 0.
	self assert: center equals: 0 @ -100.
	self assert: b axisX fromPoint equals: 0 @ -100.
	self assert: b axisX toPoint equals: 300 @ -100.
	self assert: b axisY fromPoint equals: -30 @ 0.
	self assert: b axisY toPoint equals: -30 @ -200