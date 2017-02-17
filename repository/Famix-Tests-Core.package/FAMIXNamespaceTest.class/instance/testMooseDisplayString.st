testing
testMooseDisplayString
	{root.
	child1.
	child2.
	child11} do: [ :each | self assert: each mooseDisplayString equals: each mooseName ]