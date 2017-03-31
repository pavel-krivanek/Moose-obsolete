hooks
render	
	| fromPosition toPosition e1 e2 l lineShape tickShape |
	fromPosition := builder getPixelPositionOf: startValue @ 0.
	toPosition := builder getPixelPositionOf: endValue @ 0.
	fromPosition := fromPosition - (0 @ distanceInPixelsFromAxis).
	toPosition := toPosition - (0 @ distanceInPixelsFromAxis).
	
	tickShape := RTBox new height: 10; width: 1; color: self markerColor.
	e1 := tickShape element.
	e2 := tickShape element.
	e1 translateTo: fromPosition.
	e2 translateTo: toPosition.
	
	lineShape := RTLine new.
	lineShape color: markerColor.
	l := lineShape edgeFrom: e2 to: e1.
	
	label := RTLabel new color: markerColor; elementOn: label.
	TRConstraint move: label between: e1 and: e2.
	TRConstraint move: label above: l.
	builder view add: e1; add: e2; add: l; add: label