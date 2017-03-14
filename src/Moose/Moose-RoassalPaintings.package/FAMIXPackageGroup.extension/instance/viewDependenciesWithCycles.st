*Moose-RoassalPaintings
viewDependenciesWithCycles
	<menuItem: 'Dependencies (cycles)' category: 'Visualize'>
	|view |
	view := RTMondrianViewBuilder new.
	self viewDependenciesWithCyclesOn: view.
	^ view openWithToolbar title: 'Dependencies (cycles)'