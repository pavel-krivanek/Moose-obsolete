rendering
renderIn: aView

	| force |
	view := aView.
	super renderIn: aView.
	self createEdges: rootNodes.
	view edges pushBack.
	self normalizer
		elements: elements;
		build.
	force := RTForceBasedLayout new.
	stepping := RTForceLayoutStepping new
		view: aView.
	stepping layout: force.
	aView addAnimation: stepping.
	
		
	
	