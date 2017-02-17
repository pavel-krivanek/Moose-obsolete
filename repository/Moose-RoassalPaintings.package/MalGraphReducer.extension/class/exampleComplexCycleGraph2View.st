*Moose-RoassalPaintings-Visualization
exampleComplexCycleGraph2View
	| view graph builder |
	view := RTMondrian new.
	builder := MalGraphStructure new 
		nodeClass: MalGraphNode;
		edgeClass: MalGraphEdge;
		yourself.
	graph := MalGraphFixture complexCycleGraph2: builder.
	view shape rectangle 
		withText: [:n| n model printString].
	view nodes: graph nodes.
	view shape 
		arrowedLine 
		color: (Color gray alpha: 0.5).
	view shape shortestDistanceAttachPoint.
	
	view edges
		moveBehind;
		objects: graph edges;
		connectFrom: #from to: #to.

	view layout forceWithCharge: -3000.
	^ view