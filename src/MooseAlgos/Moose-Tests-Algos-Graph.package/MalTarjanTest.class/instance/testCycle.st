tests
testCycle
	| a b c cycleNodesOfA |
	MalGraphFixture cycleGraph: tarjan.
	tarjan run.
	a := tarjan findNode: $a.
	b := tarjan findNode: $b.
	c := tarjan findNode: $c.
	cycleNodesOfA := Set 
		with: b
		with: c.
	self assert: a isInCycle.
	self assert: b isInCycle.
	self assert: c isInCycle.
	self deny: (tarjan findNode: $d) isInCycle.
	self assert: (a cycleNodes includesAllOf: cycleNodesOfA).
	self assert: (cycleNodesOfA includesAllOf: a cycleNodes)