*Moose-RoassalPaintings
viewBlueprintOn: view

	| nodes edges eb |
	nodes := RTBox new color: Color transparent; elementsOn: self.
	view addAll: nodes.
	"edges := RTEdge buildEdgesFromObjects: self from: #superclass to: #yourself using: (RTMultiLine new color: Color veryLightGray; width: 2; orthoVertical) scope: nodes."
	eb := RTEdgeBuilder new.
	eb view: view.
	eb objects: self.
	eb shape: (RTMultiLine new color: Color veryLightGray; width: 2; orthoVertical).
	edges := eb connectFrom: #superclass.
	view addAll: edges.
	nodes do: [ :each | 
		each @ RTDraggable.
		RTNest new on: each nest: {(each model viewBlueprintOn: view)}
		].

	edges do: [ :each | each shape withVerticallAttachPoint ].	
	RTTreeLayout new verticalGap: 40; on: nodes