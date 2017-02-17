*Moose-RoassalPaintings
viewBlueprint
	<menuItem: 'Class blueprint' category: 'Visualize'>
	| view |
	view := RTView new.
	view @ RTDraggableView.
	self viewBlueprintOn: view.
	^ view open