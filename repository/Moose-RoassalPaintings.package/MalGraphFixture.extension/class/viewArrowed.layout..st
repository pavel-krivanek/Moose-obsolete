*Moose-RoassalPaintings-visualization
viewArrowed: fixtureSelector layout: layoutSelector
	" Inspect following expressions to visualize the view.
	self viewArrowed: #complexCycleGraph2: layout: #circle.
	"
	| view graph builder nodes |
	view := RTView new.
	builder := MalGraphStructure new 
		nodeClass: MalGraphNode;
		edgeClass: MalGraphEdge;
		yourself.
	graph := self perform: fixtureSelector with: builder.
	nodes := ((RTBox new) + (RTLabel new text: [:n| n model printString])) elementsOn: graph nodes.
	view addAll: nodes.
	RTEdgeBuilder new view: view;
		shape: (RTArrowedLine new color: Color black; attachPoint: RTShorterDistanceAttachPoint new);
		source: graph edges
		connectFrom: #from to: #to.
	(RTLayoutBuilder new perform: layoutSelector) on: view elements.
	^ view