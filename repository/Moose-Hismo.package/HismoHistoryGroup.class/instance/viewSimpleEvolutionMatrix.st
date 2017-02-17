view
viewSimpleEvolutionMatrix
	| view |
	<menuItem: 'Evolution matrix' category: 'Visualize'>
	view := RTMondrianViewBuilder new.
	self
		do: [:each | each viewSimpleEvolutionMatrixIn: view].
	view verticalLineLayout.
	^ view openWithStatusbar setLabel: 'Simple Evolution Matrix'