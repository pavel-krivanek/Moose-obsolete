sources
example
	<gtExample>
	<noTest>	
	"This example center the view on lat 0, lon 0."
	"
	RTOpenStreetMapExample new example
	"

	| v s e |
	v := RTView new.
	s := RTOSM new.
	e := s element.
	v add: e.
	v add: (RTBox new size: 400) element @ RTHighlightable @ RTDraggable.
	v canvas addMenu: 'In' callback: [ RTZoomInMove on: v ].
	v canvas addMenu: 'Out' callback: [ RTZoomOutMove on: v ].
	v @ RTDraggableView @ RTZoomableView.
	v canvas camera scale: 0.05.
	RTEmptyViewContext setOnView: v.
	^ v