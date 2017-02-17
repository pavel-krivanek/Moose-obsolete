tests
testComplexCycle
	(MalGraphFixture complexCycleGraph: hal) run.
	self assert: (hal findNode: $a) hNumber equals: 0.
	self assert: (hal findNode: $b) hNumber equals: 3.
	self assert: (hal findNode: $c) hNumber equals: 2.
	self assert: (hal findNode: $d) hNumber equals: 2.
	self assert: (hal findNode: $e) hNumber equals: 4.
	self assert: (hal findNode: $f) hNumber equals: 2.
	self assert: (hal findNode: $g) hNumber equals: 1.
	self assert: (hal findNode: $h) hNumber equals: 1.
	hal showLevels