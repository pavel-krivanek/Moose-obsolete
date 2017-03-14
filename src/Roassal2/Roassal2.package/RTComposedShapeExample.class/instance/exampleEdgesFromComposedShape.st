sources
exampleEdgesFromComposedShape
	| v shape es |
	v := RTView new.
	v @ RTDraggableView.
	shape := RTCompositeShape new.
	shape add: RTLabel new.
	shape add: RTBox new.
	es := shape elementsOn: RTShape withAllSubclasses.
	v addAll: es.
	RTEdgeBuilder new
		view: v;
		objects: RTShape withAllSubclasses;
		shape:
			(RTArrowedLine new
				color: Color black;
				attachPoint:
					(RTShorterDistanceAttachPointAndCompositeShape new
						composedShapeSelection: #second));
		connectFrom: #superclass to: #yourself.
	RTNest new
		for: es
		inShape: #second
		add:
			[ :group :model | 
			group
				addAll:
					((RTBox new color: Color blue) elementsOn: model rtmethods).
			RTGridLayout on: group ].
	RTHorizontalTreeLayout on: es.
	es @ RTPopup @ RTDraggable.
	^ v