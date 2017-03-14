sources
exampleDraggingChildren

| v es |
v := RTView new.
v @ RTDraggableView.

es := RTLabel elementsOn: (1 to: 40).
v addAll: es.
RTEdgeBuilder new
	view: v;
	elements: es;
	connectFrom: [ :aValue | aValue // 2 ].
RTClusterLayout on: es.
es @ RTDraggableChildren.
^ v