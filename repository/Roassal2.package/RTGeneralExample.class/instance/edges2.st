shapes
edges2
	<gtExample>
	"
	self new edges2
	"
	
	| view elements |
	view := RTView new.
	elements := (RTBox new color: (Color purple alpha: 0.2); size: 40) elementsOn: #(1 2).
	elements @ RTDraggable.
	view addAll: elements.
	
	RTEdgeBuilder new
		view: view;
		useAssociation: 1 -> 2.
	
	RTHorizontalLineLayout on: elements.
	^ view