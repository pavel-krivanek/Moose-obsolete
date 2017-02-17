tests
testRunInWithoutCyclesComplexGraph
	MalGraphFixture withoutCyclesComplexGraph: longestPath.
	longestPath run.
	self assert: ($a to: $s) hasWeight: #(0 0 1 2 1 3 1 1 4 0 1 1 2 2 2 3 2 5 6).

