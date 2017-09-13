sources
exampleEdgeMarkers
| v from to edge markers offset|
v := RTView new.
markers := (OPUmlEdgeMarkers selectorsInProtocol: 'markers') select: [ :each | each numArgs isZero ].
offset := 0.
markers
	do: [ :each | 
		from := OPUmlNameLabel new text: each asString.
		to := OPUmlNameLabel new text: each asString.
		(edge := OPUmlEdge new)
			source: from;
			target: to;
			headDecorator: (OPUmlEdgeMarkers perform: each);
			tailDecorator: (OPUmlEdgeMarkers perform: each).
		from renderIn: v.
		to renderIn: v.
		edge renderIn: v.
		from rtElement @ RTDraggable.
		to rtElement @ RTDraggable.
		from translateBy: 0 @ offset.
		to translateBy: 200 @ (offset + 50).
		offset := offset + 50 ].
^ v @ RTEmptyViewContextInteraction