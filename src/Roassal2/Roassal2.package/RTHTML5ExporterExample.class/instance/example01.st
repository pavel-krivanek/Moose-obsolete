examples
example01
	"
	self new example01
	"

	| e view |
	e := RTHTML5Exporter new.
	view := RTView new.
	view canvas color: Color gray.
	RTShape withAllSubclasses
		do:
			[ :cls | view add: (RTBox elementOn: cls) @ RTPopup @ RTDraggable ].
	view @ RTDraggableView.
	RTEdgeBuilder new
		view: view;
		objects: RTShape withAllSubclasses;
		connectFrom: #superclass to: #yourself.
	RTTreeLayout on: view elements.
	e export: view.
	^ view