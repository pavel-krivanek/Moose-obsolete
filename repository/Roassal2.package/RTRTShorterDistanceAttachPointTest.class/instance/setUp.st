running
setUp
	super setUp.
	view := RTView new.
	e1 := RTBox new extent: 70 @ 30; element.
	e2 := RTBox new extent: 70 @ 30; element.
	lineShape := RTLine new.
	lineShape color: Color blue.
	lineShape attachPoint: RTShorterDistanceAttachPoint new.
	edge := lineShape edgeFrom: e1 to: e2.
	view add: e1; add: e2; add: edge.
	e2 @ RTDraggable.
	e1 @ RTDraggable.
