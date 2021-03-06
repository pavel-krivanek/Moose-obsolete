*Moose-RoassalPaintings-visualization
view: fixtureSelector layout: layoutSelector
	" Inspect following expressions to visualize the view.
	self view: #simpleGraph: layout: #tree.
	self view: #cycleGraph: layout: #tree.
	self view: #aseCircuitGraph: layout: #tree.
	self view: #moduleGraph: layout: #circle.
	self view: #nestedCycleGraph: layout: #circle
	"
	| view graph builder nodes |
	view := RTView new.
	builder := MalGraphStructure new 
		nodeClass: MalGraphNode;
		edgeClass: MalGraphEdge;
		yourself.
	graph := self perform: fixtureSelector with: builder.
	nodes := ((RTBox new)+ (RTLabel new text: [:n | n model printString])) elementsOn: graph nodes.
	view addAll: nodes.
	RTEdgeBuilder new view: view; source: graph edges connectFrom: #from to: #to.
	(RTLayoutBuilder new perform: layoutSelector) on: view elements.
	^ view