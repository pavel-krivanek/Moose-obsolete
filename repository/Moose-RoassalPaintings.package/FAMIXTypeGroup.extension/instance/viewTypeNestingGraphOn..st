*Moose-RoassalPaintings
viewTypeNestingGraphOn: view
	view shape withoutBorder withText: #name.
	view nodes: self.
	self do: [:each |
		| visitor |
		visitor := FAMIXAttributesGraphTraverser new .
		each accept: visitor.
		view edges: visitor value graph nodes from: #model toAll: [:x | x nextNodes collect: #model] ].
	view horizontalDominanceTreeLayout.