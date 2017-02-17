sources
exampleClusterLayout
	| v |
	v := RTView new.
	v
		addAll:
			((RTEllipse new
				color: Color purple;
				size: 10) elementsOn: Collection withAllSubclasses) @ RTDraggable.
	RTEdgeBuilder new
		view: v;
		objects: Collection withAllSubclasses;
		connectFrom: #superclass to: #yourself.
	RTClusterLayout on: v elements edges: v edges.
	v edges do: [ :e | e trachelShape pushBack ].
	^ v