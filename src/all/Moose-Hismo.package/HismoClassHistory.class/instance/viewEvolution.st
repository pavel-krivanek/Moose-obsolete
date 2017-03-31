view
viewEvolution
	<menuItem: 'Evolution' category: 'Visualize'> 
	| view |
	view := RTMondrian new.
	self viewEvolutionOn: view.
	^ view open