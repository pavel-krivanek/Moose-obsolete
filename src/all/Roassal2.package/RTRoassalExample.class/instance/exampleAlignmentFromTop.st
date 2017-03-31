sources
exampleAlignmentFromTop

| rootClasses groups v elements edges |
rootClasses := Array with: RTShape with: RTLayout with: RTBuilder.

groups := rootClasses collect: [ :cls |  | g |
	g := RTGroup new.
	elements := (RTEllipse new size: 8; color: Color blue) elementsOn: cls withAllSubclasses.
	g addAll: elements.
	edges := RTEdgeBuilder new
		view: g;
		objects: cls withAllSubclasses;
		connectFrom: #superclass.
	RTTreeLayout on: elements edges: edges.
	g
	].

v := RTView new.
groups do: [ :aGroup | v addAll: aGroup ].
RTHorizontalLineLayout new gapSize: 30; on: groups.

RTAlignment new elements: groups; top.

^ v