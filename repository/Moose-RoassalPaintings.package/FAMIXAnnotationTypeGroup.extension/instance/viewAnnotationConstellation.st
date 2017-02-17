*Moose-RoassalPaintings
viewAnnotationConstellation
	<menuItem: 'Annotation Constellation' category: 'Visualize'>
	| view |
	view := RTMondrian new.
	self viewAnnotationConstellationOn: view.
	^ view openWithToolbar title: 'Annotation Constellation'