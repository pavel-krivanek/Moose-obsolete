tests
testEllipseWithArrowArc
	| v els line1 line2 e1 e2|
	v := RTView new.
	els := RTEllipse new 
		color: Color gray; 
		borderColor: Color black; 
		size: 20; 
		elementsOn: #(A B).
	els @ RTDraggable.
	v addAll: els.

	els second translateBy: 100 @ 0.

	line1 := RTArcLine new 
		distance: -10;
		withBorderAttachPoint;
		filledNarrowArrowHead; 
		color: Color red.
	line2 := RTArcLine new 
		distance: -10;
		withBorderAttachPoint;
		filledNarrowArrowHead; 
		color: Color blue.
	e1 := line1 edgeFrom: els first to: els last.
	e2 := line2 edgeFrom: els second to: els first.
	
	v add: e1; add: e2.
	