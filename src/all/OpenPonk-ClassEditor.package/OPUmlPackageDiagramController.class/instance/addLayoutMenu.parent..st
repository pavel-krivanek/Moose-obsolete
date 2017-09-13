ui hooks
addLayoutMenu: builder parent: aParent
	(Smalltalk globals includesKey: #RTGraphVizLayout)
		ifTrue: [ (builder item: 'GraphViz')
				parent: aParent;
				action: [ self
						applyLayout: [ :cls :inh :assoc | 
							#RTGraphVizLayout asClass new
								orthogonalLines;
								on: cls directed: inh undirected: assoc ] ] ].
	(builder item: 'Grid')
		parent: aParent;
		action: [ self
				applyLayout: [ :cls :inh :assoc | 
					RTGridLayout new
						gapSize: 140;
						on: cls ] ].
	(builder item: 'Sugiyama')
		parent: aParent;
		action: [ self
				applyLayout: [ :cls :inh :assoc | 
					| centerY |
					RTSugiyamaLayout new
						doNotAttachPoint;
						verticalGap: 100;
						horizontalGap: 100;
						on: cls edges: inh.
					centerY := cls asGroup encompassingRectangle center y.
					cls do: [ :each | each translateBy: 0 @ 2 * (centerY - each position y) ] ] ].
	(builder item: 'Tree')
		parent: aParent;
		action: [ self
				applyLayout: [ :cls :inh :assoc | 
					| centerY |
					RTTreeLayout new
						doNotAttachPoint;
						verticalGap: 100;
						horizontalGap: 100;
						on: cls edges: inh.
					centerY := cls asGroup encompassingRectangle center y.
					cls do: [ :each | each translateBy: 0 @ 2 * (centerY - each position y) ] ] ].
	(builder item: 'Circle')
		parent: aParent;
		action: [ self
				applyLayout: [ :cls :inh :assoc | 
					RTWeightedCircleLayout new
						scaleBy: 20;
						on: cls ] ]