layout
numbers
	<gtExample>
	"self new numbers"

	| view elements |
	view := RTView new.
	elements := RTBox elementsOn: (1 to: 100).
	elements @ RTDraggable.
	view addAll: elements.
	RTEdgeBuilder new
		view: view;
		objects: (1 to: 100);
		shape: (RTLine new color: Color purple);
		connectFrom: [ :v | v // 2 ] to: #yourself.
	RTTreeLayout on: view elements edges: view edges.
	view edges do: [ :e | e trachelShape pushBack ].
	view @ RTDraggableView.
	^ view