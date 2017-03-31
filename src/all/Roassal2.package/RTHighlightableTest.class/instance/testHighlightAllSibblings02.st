tests
testHighlightAllSibblings02

	| v e1 e2 e3 |
	v := RTView new.
	e1 := (RTBox new color: Color gray) element.
	e2 := (RTEllipse new color: Color gray) element.
	e3 := (RTBox new color: Color gray) element.
	
	v add: e1; add: e2; add: e3.
	
	e1 @ RTHighlightable allSibblings.
	self assert: e1 trachelShape color == Color gray.
	self assert: e2 trachelShape color == Color gray.
	self assert: e3 trachelShape color == Color gray.
	
	e1 announce: TRMouseEnter.
	self assert: e1 trachelShape color == Color gray.
	self assert: e2 trachelShape color == Color gray.
	self assert: e3 trachelShape color == Color gray.