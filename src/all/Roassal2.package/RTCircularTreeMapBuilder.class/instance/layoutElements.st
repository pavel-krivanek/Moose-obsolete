layout
layoutElements
	| virtualRoot |
	virtualRoot := (RTEllipse new borderWidth: 0.005) element.
	virtualRoot attributes at: self childrenKey put: rootNodes.
	self layout: virtualRoot.
	self expandCircles: virtualRoot parent: (RTCircleTree new r: self baseradius)