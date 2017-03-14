*Moose-RoassalPaintings
viewWithinOverallHierarchy
	<menuItem: 'Within overall hierarchy' category: 'Visualize'>
	| view |
	view := RTMondrian new.
	self viewWithinOverallHierarchyOn: view.
	^ view openWithToolbar title: 'Within overall hierarchy'