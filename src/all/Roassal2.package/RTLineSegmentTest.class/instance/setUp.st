running
setUp
	super setUp.
	lineX := RTLineSegment from: 10 @ -10 to: 110 @ -10.
	lineY := RTLineSegment from: 10 @ -10 to: 10 @ 90.
	lineDiagonal := RTLineSegment from: 10 @ -10 to: -90 @ -110.
	lineX0 := RTLineSegment from: 0 @ 0 to: 100 @ 0