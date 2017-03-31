tests
testBoxBorderPoint
	| from to via |
	from := GRectangle origin: 0 @ 0 corner: 20 @ 10.
	to := GRectangle origin: 10 @ 30 corner: 20 @ 40.
	via := GLineSegment from: from center to: to center.
	self assert: (attachPoint borderPointFrom: from to: to via: via) equals: (65 / 6) @ 10.
	self assert: (attachPoint borderPointFrom: to to: from via: via) equals: (85 / 6) @ 30