nesting
nestedHierarchy
	<gtExample>
	" 
	self new nestedHierarchy
	"

	| view inner host |
	view := RTView new.
	inner := (RTBox new color: (Color purple alpha: 0.2))
		elementsOn: (1 to: 100).
	host := (RTBox new color: (Color yellow alpha: 0.1)) element.
	inner
		do:
			[ :i | i when: TRMouseClick do: [ :event | event model inspect ] ].
	view add: host.
	view addAll: inner.
	RTEdgeBuilder new
		view: view;
		objects: (1 to: 100);
		connectFrom: [ :v | v // 2 ] to: #yourself.
	RTTreeLayout new on: inner edges: view edges.
	RTNest new on: host nest: inner.
	^ view