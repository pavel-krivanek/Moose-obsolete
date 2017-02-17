*Moose-RoassalPaintings-Support
viewTypeNestingGraphOn: view
	| visitor |
	visitor := FAMIXAttributesGraphTraverser new .
	self accept: visitor.
	view nodes: visitor value graph nodes.
	view edges: visitor value graph nodes from: #yourself toAll: #nextNodes.
	view horizontalDominanceTreeLayout