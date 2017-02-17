*Moose-RoassalPaintings
viewSystemComplexity
	<menuItem: 'Package-wise System Complexity' category: 'Visualize'> 

	| view | 
	view := RTMondrian new.
	self viewSystemComplexityOn: view.
	^ view open setLabel: 'Package-wise System Complexity'