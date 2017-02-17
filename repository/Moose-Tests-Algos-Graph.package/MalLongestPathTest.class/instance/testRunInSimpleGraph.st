tests
testRunInSimpleGraph
	MalGraphFixture simpleGraph: longestPath.
	longestPath run.
	self assert: ($a to: $d)  hasWeight: #(0 1 2 0).