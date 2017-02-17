sources
exampleArrowedEdges
	| view els |
	view := RTView new.
	els := (RTBox new
		size: 10;
		color: Color blue;
		borderColor: Color veryLightGray)
		elementsOn: Collection withAllSubclasses.
	els @ RTDraggable.
	view addAll: els.
	RTEdgeBuilder new
		view: view;
		objects: Collection withAllSubclasses;
		shape:
			(RTLine new
				attachPoint: RTShorterDistanceAttachPoint new;
				color: Color veryDarkGray)
				+
					(RTSimpleArrowHead new
						attachPoint: RTShorterDistanceAttachPoint new;
						color: Color veryDarkGray);
		connectFrom: #yourself toAll: #subclasses.
	RTTreeLayout on: els.
	view @ RTDraggableView.
	^ view