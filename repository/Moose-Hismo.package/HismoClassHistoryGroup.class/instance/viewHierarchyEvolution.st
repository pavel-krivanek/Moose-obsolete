view
viewHierarchyEvolution
	<menuItem: 'Hierarchy evolution' category: 'Visualize'>
	
	| view |
	
	view := RTMondrianViewBuilder new.
	self viewHierarchyEvolutionOn: view.
	^ view open setLabel: 'Hierarchy evolution'