*Moose-RoassalPaintings-Visualization
exampleComplexCycleGraph2ReducedView
	| graphReducer view |
	graphReducer := MalGraphReducer new.
	MalGraphFixture complexCycleGraph2: graphReducer.
	graphReducer run.

	view := RTMondrian new.
	view shape rectangle 
		withText: [:n| n model printString].
	view nodes: graphReducer nodes.

	view shape 
		arrowedLine 
		color: (Color gray alpha: 0.5).
	view shape shortestDistanceAttachPoint.
	
	view edges
		moveBehind;
		objects: graphReducer nodes from: #yourself toAll: #nextNodes.

	view layout forceWithCharge: -3000.
	^ view