bezier line
testBezierLine01

	| v es eb centralPoint |
	v := RTView new.
	es := (RTEllipse new size: 15) elementsOn: (1 to: 15).
	v addAll: es.
	RTCircleLayout on: es.

	centralPoint := (RTEllipse new size: 10; color: Color red) elementOn: -1.
	centralPoint translateTo: es encompassingRectangle center.
	v add: centralPoint.

	es @ RTLabeled.

	eb := RTEdgeBuilder new.
	eb view: v.
	eb shape bezierLineUsingObjects: (Array with: -1)  inView: v.
	eb useAssociations: (Array with: 1->10 with: 2 -> 10 with: 3 -> 10 ).
