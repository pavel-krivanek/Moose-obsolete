*Moose-RoassalPaintings
viewHierarchy
	<menuItem: 'Namespace Hierarchy' category: 'Visualize'>
	| view |
	view := RTMondrian new.
	self viewHierarchyOn: view.
	^ view openWithToolbar title: 'Namespace Hierarchy'.