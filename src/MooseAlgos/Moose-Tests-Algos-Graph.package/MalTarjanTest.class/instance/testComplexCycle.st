tests
testComplexCycle
	| a b c cycleNodesOfC d f e g h |

	MalGraphFixture complexCycleGraph: tarjan.
	tarjan run.
	a := tarjan findNode: $a.
	b := tarjan findNode: $b.
	c := tarjan findNode: $c.
	d := tarjan findNode: $d.
	e := tarjan findNode: $e.
	f := tarjan findNode: $f.
	g := tarjan findNode: $g.
	h := tarjan findNode: $h.
	cycleNodesOfC := Set 
		with: d
		with: f.
	self deny: a isInCycle.
	self deny: b isInCycle.
	self assert: c isInCycle.
	self assert: d isInCycle.
	self assert: f isInCycle.
	self deny: e isInCycle.
	self assert: g isInCycle.
	self assert: h isInCycle.
	self assert: (c cycleNodes includesAllOf: cycleNodesOfC).
	self assert: (cycleNodesOfC includesAllOf: c cycleNodes).
	self assert: (g cycleNodes hasEqualElements: (Array with: h)).
	self assert: (h cycleNodes hasEqualElements: (Array with: g))