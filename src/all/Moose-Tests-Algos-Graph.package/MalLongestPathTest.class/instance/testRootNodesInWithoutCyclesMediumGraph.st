tests
testRootNodesInWithoutCyclesMediumGraph
	MalGraphFixture withoutCyclesMediumGraph: longestPath.
	longestPath computeRootNodes.
	self assert: (longestPath rootNodes collect: #model) equals: #($a $b) asOrderedCollection 

