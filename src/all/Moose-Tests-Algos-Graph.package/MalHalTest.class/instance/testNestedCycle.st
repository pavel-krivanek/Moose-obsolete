tests
testNestedCycle
	(MalGraphFixture nestedCycleGraph: hal) run.
	self assert: (hal findNode: $a) hNumber equals: 0.
	self assert: (hal findNode: $b) hNumber equals: 0.
	self assert: (hal findNode: $c) hNumber equals: 0.
	self assert: (hal findNode: $d) hNumber equals: 0.
	self assert: (hal findNode: $e) hNumber equals: 0.
	self assert: (hal findNode: $f) hNumber equals: 1.
	self assert: (hal findNode: $g) hNumber equals: 1.
	self assert: (hal findNode: $h) hNumber equals: 1.
	self assert: (hal findNode: $i) hNumber equals: 1.
	hal showLevels