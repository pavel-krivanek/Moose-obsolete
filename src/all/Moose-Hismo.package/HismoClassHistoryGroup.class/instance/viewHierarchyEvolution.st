view
viewHierarchyEvolution
	<menuItem: 'Hierarchy evolution' category: 'Visualize'>
	
	| view |
	
	view := RTMondrian new.
	self viewHierarchyEvolutionOn: view.
	^ view open setLabel: 'Hierarchy evolution'