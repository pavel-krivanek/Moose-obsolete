roassal
viewConstellation
	<menuItem: 'View Multiplication constelation' category: 'Visualize'>

	| view |
	view := RTMondrian new.
	self viewConstellationOn: view.
	^ view openWithToolbar title: 'View Multiplication constelation'