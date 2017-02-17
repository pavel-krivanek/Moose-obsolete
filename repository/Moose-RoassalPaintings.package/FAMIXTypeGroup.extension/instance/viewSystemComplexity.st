*Moose-RoassalPaintings
viewSystemComplexity
	<menuItem: 'System complexity' category: 'Visualize'> 
	| b |
	b := RTMondrian new.
	self viewSimpleSystemComplexityOn: b.
	self addSystemComplexityLegendOn: b view.
	^ b openWithToolbar title: 'System Complexity'