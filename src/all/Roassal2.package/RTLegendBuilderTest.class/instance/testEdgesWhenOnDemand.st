tests
testEdgesWhenOnDemand

	| v  lb lbl allElements edges |
	v := RTView new.
	v @ RTDraggableView.

	lb := RTLegendBuilder new.
	lb view: v.
	lb onDemand.
	
	lb addRectanglePolymetricWidth: 'number of methods' height: 'Line of code' box: 'a Pharo class'.

	lb build.

	self assert: v canvas fixedShapes size equals: 1.
	
	lbl := v canvas fixedShapes first.
	allElements := lb group flatCollect: #yourself.
	edges := allElements select: [ :e | e class == RTEdge ].
	self assert: edges size equals: 2.
	self assert: (allElements includes: edges first from).
	self assert: (allElements includes: edges first to).