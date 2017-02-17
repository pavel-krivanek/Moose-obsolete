public
nestLayers: layers
	layers
		do: [ :layer | 
			RTHorizontalTreeLayout new
				leftGap: 20;
				topGap: 20;
				horizontalGap: 20;
				layered;
				on: layer value
					edges:
						(layer value
								flatCollect: [ :each | each connectedEdges select: [ :edge | (layer value includes: edge from) and: [ layer value includes: edge to ] ] ]).
			RTNest new
				centerOn: layer key elements: layer value;
				makeElements: layer value draggableBy: layer key ]