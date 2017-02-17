public
vertical
	"Create a vertical bezier line between the two extremities of the edge"
	"
	e.g.
	v := RTView new.
	shape := RTEllipse new size: 15; color: Color blue trans.
	e1 := shape element.
	e2 := shape element.
	v add: e1; add: e2.
	e1 @ RTDraggable.
	e2 @ RTDraggable.
	e := RTBezierLine vertical edgeFrom: e1 to: e2.
	v add: e.
	"
	^ self new vertical