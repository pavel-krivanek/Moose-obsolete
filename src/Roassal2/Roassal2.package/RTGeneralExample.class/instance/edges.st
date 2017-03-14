shapes
edges
	<gtExample>
	"
	self new edges
	"

	| view elements |
	view := RTView new.
	elements := (RTBox new color: (Color purple alpha: 0.2))
		elementsOn: Collection withAllSubclasses.
	view addAll: elements.
	RTEdgeBuilder new
		view: view;
		objects: Collection withAllSubclasses;
		shape: (RTLine new color: (Color blue alpha: 0.2));
		connectFrom: #yourself to: #superclass.
	RTGridLayout on: view elements.
	^ view