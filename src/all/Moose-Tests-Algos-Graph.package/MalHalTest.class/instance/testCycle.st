tests
testCycle
	(MalGraphFixture cycleGraph: hal) run.
	self assert: (hal findNode: $a) hNumber equals: 1.
	self assert: (hal findNode: $b) hNumber equals: 1.
	self assert: (hal findNode: $c) hNumber equals: 1.
	self assert: (hal findNode: $d) hNumber equals: 0.
	hal showLevels