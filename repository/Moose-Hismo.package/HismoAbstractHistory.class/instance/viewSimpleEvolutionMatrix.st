view
viewSimpleEvolutionMatrix
	<menuItem: 'Evolution matrix' category: 'Visualize'>
	| view |
	
	view := RTMondrian new.
	self viewSimpleEvolutionMatrixIn: view.
	^ view openWithToolbarEntitled: 'Simple Evolution matrix'