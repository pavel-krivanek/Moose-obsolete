fixtures
simpleWeightedGraph: builder

	| nodes edges |
	nodes := 1 to: 5.
	edges := #((1 2 5) (1 3 4) (2 3 2) (3 4 5) (2 4 3) (4 5 1) (5 1 2) (1 5 3)).

	builder nodes: nodes.
	builder edges: edges from: #first to: #second weight: #third.
	^ builder
