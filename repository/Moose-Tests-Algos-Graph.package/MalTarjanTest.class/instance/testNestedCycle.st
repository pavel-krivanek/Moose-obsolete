tests
testNestedCycle
	| a b c cycleNodesOfC d f e g h cycleNodesOfI i |
	MalGraphFixture nestedCycleGraph: tarjan.
	tarjan run.
	a := tarjan findNode: $a.
	b := tarjan findNode: $b.
	c := tarjan findNode: $c.
	d := tarjan findNode: $d.
	e := tarjan findNode: $e.
	f := tarjan findNode: $f.
	g := tarjan findNode: $g.
	h := tarjan findNode: $h.
	i := tarjan findNode: $i.
	cycleNodesOfC := Set 
		with: a
		with: b
		with: d
		with: e.
	cycleNodesOfI := Set 
		with: f
		with: g
		with: h.
	tarjan nodes do: [ :n | self assert: n isInCycle ].
	self assert: (c cycleNodes includesAllOf: cycleNodesOfC).
	self assert: (cycleNodesOfC includesAllOf: c cycleNodes).
	self assert: (i cycleNodes includesAllOf: cycleNodesOfI).
	self assert: (cycleNodesOfI includesAllOf: i cycleNodes)