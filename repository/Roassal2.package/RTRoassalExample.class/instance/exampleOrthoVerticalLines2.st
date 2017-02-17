sources
exampleOrthoVerticalLines2
	| v shape |
	v := RTView new.
	v
		addAll:
			((RTEllipse new
				size: 20;
				color: (Color red alpha: 0.3)) elementsOn: (1 to: 20)).
	shape := RTMultiLine new.
	shape orthoVertical.
	shape color: (Color blue alpha: 0.3).
	RTEdgeBuilder new
		view: v;
		objects: (1 to: 20);
		shape: shape;
		connectFrom: [ :n | n // 3 ] to: #yourself.
	v elements @ RTDraggable @ RTPopup.
	RTTreeLayout on: v elements.
	^ v