tests
testMinSpanningTree

	| tree expectedEdges |
	MalGraphFixture simpleWeightedGraph: kruskal.
	tree := kruskal run collect: [:e| e asTuple].

	expectedEdges := #((4 5 1) (5 1 2) (2 3 2) (2 4 3)).
	"self assert: tree asArray = expectedEdges."
	expectedEdges do: [:e|
		self assert: (tree includes: e)
	].
	tree do: [:e|
		self assert: (expectedEdges includes: e)	
	]