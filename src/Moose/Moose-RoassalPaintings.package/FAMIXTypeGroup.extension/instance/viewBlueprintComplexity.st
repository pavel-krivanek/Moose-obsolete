*Moose-RoassalPaintings
viewBlueprintComplexity
	<menuItem: 'Blueprint complexity' category: 'Visualize'> 
	
	| view |
	view := RTView new.
	view @ RTZoomableView @ RTDraggableView.
	self viewBlueprintOn: view.
	self asArray anyOne addBlueprintLegendOn: view. 
	view inspect.
