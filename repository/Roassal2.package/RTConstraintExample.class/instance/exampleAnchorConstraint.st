sources
exampleAnchorConstraint
	| v lbls es e1 e2 a1 a2 |
	v := RTView new.
	lbls := RTLabel new elementsOn: #(#First #Second).
	es := RTEllipse new
		size: 30;
		borderColor: Color black;
		elementsOn: #(#source #dest).
	v
		addAll: lbls;
		addAll: es.
	es @ RTDraggable.
	es @ RTLabeled.
	e1 := RTArrowedLine new
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: es first to: es second.
	v add: e1.
	e2 := RTArrowedLine new
		withBorderAttachPoint;
		color: Color black;
		edgeFrom: es second to: es first.
	v add: e2.
	a1 := RTAnchorConstraint new.
	a1 anchorShape size: 10.
	a1 guideLine color: Color red.
	a1
		element: lbls first;
		edge: e1;
		balance: 0.2;
		minDistance: 10;
		build.
	(a2 := RTAnchorConstraint new)
		element: lbls second;
		edge: e2;
		balance: 0.2;
		minDistance: 10;
		build.
	es second translateTo: 200 @ 150.
	^ v