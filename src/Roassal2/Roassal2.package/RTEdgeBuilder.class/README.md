RTEdgeBuilder offers an API to easily build edges.

Here is an example:
[ [ [ 
	| v es |
	v := RTView new.

	es := (RTEllipse new size: 20) elementsOn: (1 to: 20).
	v addAll: es.

	RTEdgeBuilder new
		view: v;
		objects: (1 to: 20);
		connectFrom: [ :value | value // 2 ].

	es @ RTPopup @ RTDraggable.
	RTTreeLayout on: es.
	v ] ] ]