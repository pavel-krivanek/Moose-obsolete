tests
testForceWithForeinEdges
	| v es layout edges |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 3).
	v addAll: (es copyFrom: 1 to: 3).
	edges := RTEdgeBuilder new
		view: v;
		objects: (1 to: 3);
		connectFrom: #yourself
			toAll: [ :value | Array with: value - 1 with: value + 1 ].

	"We give to the layout node 1 and 2, and some edges that refer to 3"
	layout := RTForceBasedLayout new.
	"No error should be raised"
	layout on: es allButLast edges: edges allButFirst