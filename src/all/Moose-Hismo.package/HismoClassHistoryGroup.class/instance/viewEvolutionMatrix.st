view
viewEvolutionMatrix
	| view |	
	view := RTMondrian new.
	self viewEvolutionMatrixOn: view.
	^ view openWithToolbarEntitled: 'Evolution Matrix'