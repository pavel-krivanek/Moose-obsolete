*Moose-RoassalPaintings
viewNameCloud
	<menuItem: 'Name Cloud' category: 'Visualize'>
	| view |
	view := RTMondrian new.
	self viewNameCloudOn: view.
	^ view openWithToolbar title: 'Name Cloud'