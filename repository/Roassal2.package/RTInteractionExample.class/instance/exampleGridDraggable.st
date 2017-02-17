sources
exampleGridDraggable
	| v es |
	v := RTView new.
	v @ RTDraggableView.
	v
		@
			(RTGridView new
				color: Color gray;
				gridSize: 20).
	v @ RTZoomableView.
	es := RTBox new
		borderColor: Color black;
		color: (Color green alpha: 0.6);
		size: 30;
		elementsOn: #(#topLeft #center).
	v addAll: es.
	es first @ (RTDraggableSnapToGrid new gridSize: 40).
	es second @ (RTDraggableSnapToGrid new center gridSize: 40).
	es @ RTResizable.
	es @ RTLabeled.
	es first translateTo: 70 negated @ 90 negated.
	es second translateTo: 70 @ 110.
	^ v