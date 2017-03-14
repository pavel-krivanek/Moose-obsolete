view
viewEvolutionMatrix
	| view |	
	view := RTMondrianViewBuilder new.
	self viewEvolutionMatrixOn: view.
	^ view openWithToolbarEntitled: 'Evolution Matrix'