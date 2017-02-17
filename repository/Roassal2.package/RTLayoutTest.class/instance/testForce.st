tests
testForce
	| v es layout |
	v := RTView new.
	es := RTBox elementsOn: (1 to: 2).
	v addAll: es.
	RTEdgeBuilder new
		view: v;
		objects: (1 to: 2);
		connectFrom: #yourself
			toAll:
				[ :value | Array with: value - 1 with: value + 1 with: value + 2 ].
	layout := RTForceBasedLayout new.
	layout on: es edges: #().
	self assert: layout userDefinedEdges isEmpty