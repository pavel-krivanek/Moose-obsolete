*Moose-RoassalPaintings
viewSystemAttraction
	<menuItem: 'System Attraction' category: 'Visualize'>
	| view |
	view := RTMondrian new.
	self viewSystemAttractionOn: view.
	^ view openWithToolbar title: 'System Attraction'