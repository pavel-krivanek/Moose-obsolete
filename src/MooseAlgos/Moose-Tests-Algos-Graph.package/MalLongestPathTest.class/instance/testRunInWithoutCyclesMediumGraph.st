tests
testRunInWithoutCyclesMediumGraph
	MalGraphFixture withoutCyclesMediumGraph: longestPath.
	longestPath run.
	self assert: ($a to: $h) hasWeight: #(0 0 1 2 1 3 1 1).

