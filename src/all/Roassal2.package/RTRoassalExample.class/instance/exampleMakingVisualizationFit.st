sources
exampleMakingVisualizationFit
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
	(RTGroup withAll: view elements) translateTo: 0 @ 0.

	"Removing this line will make the visualization larger than the window"
	view canvas camera focusOnCenterScaled: 500 @ 500.
	^ view