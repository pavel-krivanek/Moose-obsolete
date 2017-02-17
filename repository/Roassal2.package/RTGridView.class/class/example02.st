example
example02
	| v es |
	v := RTView new.
	v @ RTDraggableView.
	v @ (RTGridView new dashes: #(1 19); gridSize: 20; color: Color black trans).
	v @ RTZoomableView.
	es := RTBox new
		color: Color green;
		size: 20;
		elementsOn: #(1 2).
	v addAll: es.
	es @ (RTDraggableSnapToGrid new gridSize: 40).
	es @ RTResizable.
	es first translateTo: 70 negated @ 90 negated.
	es second translateTo: 70 @ 110.
	^ v