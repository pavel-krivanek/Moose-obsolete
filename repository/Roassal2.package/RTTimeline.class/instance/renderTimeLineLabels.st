private - utility
renderTimeLineLabels
	| labels position labelElements halfVerticalStep |
	labels := self lineIdentifierLabels.
	labelElements := RTGroup new.
	labels
		doWithIndex:
			[ :aLabel :index | 
			position := self getPixelPositionOf: 0 @ index.
			labelElements add: (self label: aLabel on: position) ].
	halfVerticalStep := (self getPixelPositionOf: 0 @ 1) y / -2.

	RTAlignment new
		elements: labelElements;
		right.
	labelElements
		translateBy:
			(labelElements extent x / 2 + self labelOffsetBetweenLines) negated @ halfVerticalStep