sources
exampleTreeLayout
	| view |
	view := RTView new.
	view
		addAll:
			(RTBox elementsOn: Collection withAllSubclasses) @ RTDraggable.
	RTEdgeBuilder new
		view: view;
		objects: Collection withAllSubclasses;
		connectFrom: #superclass to: #yourself.
	RTTreeLayout on: view elements edges: view edges.
	view @ RTDraggableView.
	view edges do: [ :e | e trachelShape pushBack ].
	^ view