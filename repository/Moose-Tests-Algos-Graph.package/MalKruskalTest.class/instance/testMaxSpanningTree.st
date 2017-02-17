tests
testMaxSpanningTree


	| tree expectedEdges |
	MalGraphFixture simpleWeightedGraph: kruskal.
	kruskal maxSpanningTree.
	tree := kruskal run collect: [:e| e asTuple].

	expectedEdges := #((1 2 5) (3 4 5) (1 3 4) (1 5 3)).
	expectedEdges do: [:e|
		self assert: (tree includes: e)
	].
	tree do: [:e|
		self assert: (expectedEdges includes: e)	
	]