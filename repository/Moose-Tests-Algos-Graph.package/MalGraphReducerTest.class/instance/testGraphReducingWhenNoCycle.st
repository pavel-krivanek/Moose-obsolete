tests
testGraphReducingWhenNoCycle
	| initialGraph |
	MalGraphFixture simpleGraph: graphReducer.
	initialGraph := graphReducer graph copy.
	graphReducer run.
	self assert: initialGraph equals: graphReducer graph