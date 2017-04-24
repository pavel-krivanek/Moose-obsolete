sources
exampleForceBasedLayoutAnimated
	| v classes edges |
	v := RTView new.
	classes := (RTEllipse new
		color: (Color purple alpha: 0.3);
		size: 10) elementsOn: Collection withAllSubclasses.
	(classes elementFromModel: Collection) trachelShape color: Color red.
	classes @ RTDraggable.
	v addAll: classes.
	edges := RTEdgeBuilder new
		view: v;
		objects: Collection withAllSubclasses;
		shape: (RTLine new color: (Color purple alpha: 0.2));
		connectFrom: #superclass to: #yourself.
	edges do: [ :e | e trachelShape pushBack ].

	"RTForceBasedLayout on: v elements edges: v edges."
	v addAnimation: (RTForceLayoutStepping new view: v).
	v @ RTDraggableView.
	^ v