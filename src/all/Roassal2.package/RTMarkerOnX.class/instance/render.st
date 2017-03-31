hooks
render	
	| fromPosition toPosition e1 e2 l lineShape |
	fromPosition := builder getPixelPositionOf: value @ 0.
	toPosition := fromPosition - (0 @ 30).
	e1 := (RTBox new size: 1) element.
	e2 := (RTBox new size: 1) element.
	e1 translateTo: fromPosition.
	e2 translateTo: toPosition.
	
	lineShape := RTArrowedLine new.
	lineShape head width: 3.
	lineShape width: 3.
	lineShape color: markerColor.
	l := lineShape edgeFrom: e2 to: e1.
	builder view add: e1; add: e2; add: l