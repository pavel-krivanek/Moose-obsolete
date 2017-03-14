*Moose-RoassalPaintings
viewDuplicationComplexity
	<menuItem: 'Duplication complexity' category: 'Visualize'>
	| view |
	view := RTMondrian new.
	self viewDuplicationComplexityOn: view.
	^ view open setLabel: 'Duplication Complexity'