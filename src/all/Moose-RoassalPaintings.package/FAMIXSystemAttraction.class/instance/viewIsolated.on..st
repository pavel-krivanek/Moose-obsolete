rendering
viewIsolated: classes on: view
	| edges |
	edges := self viewWithoutLayout: classes on: view.
	view forceBasedLayout userDefinedEdges: edges