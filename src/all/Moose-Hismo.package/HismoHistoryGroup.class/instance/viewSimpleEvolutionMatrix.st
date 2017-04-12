view
viewSimpleEvolutionMatrix
	| view |
	<menuItem: 'Evolution matrix' category: 'Visualize'>
	view := RTMondrian new.
	self
		do: [:each | each viewSimpleEvolutionMatrixIn: view].
	view layout verticalLine.
	^ view open "setLabel: 'Simple Evolution Matrix'"