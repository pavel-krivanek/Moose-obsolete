tests
testWithNesting
	| v e e2 int |
	v := RTView new.

	e := RTBox elementOn: 1.
	v add: e.

	e2 := (RTBox new color: Color blue) elementOn: 2.
	v add: e2.
	RTNest new on: e nest: (Array with: e2).

	int := RTShowLabel new.
	int highlightObject: #yourself.
	e @ int.
	
	"We enter and leave the outter element"
	self assert: v canvas numberOfShapes equals: 2.
	e announce: TRMouseEnter.
	self assert: v canvas numberOfShapes equals: 3.
	e announce: TRMouseLeave.
	self assert: v canvas numberOfShapes equals: 2.
	

	"We enter the outer and inner elements"
	e announce: TRMouseEnter.
	e announce: TRMouseLeave.
	e2 announce: TRMouseEnter.
	self assert: v canvas numberOfShapes equals: 2.
	e2 announce: TRMouseLeave.
	e announce: TRMouseLeave.
	self assert: v canvas numberOfShapes equals: 2.

