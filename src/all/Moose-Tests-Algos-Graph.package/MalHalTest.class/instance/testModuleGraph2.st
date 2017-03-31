tests
testModuleGraph2
	(MalGraphFixture moduleGraph2: hal) run.
	self assert: (hal findNode: $u) hNumber equals: 0.
	self assert: (hal findNode: $w) hNumber equals: 1.
	self assert: (hal findNode: $a) hNumber equals: 2.
	self assert: (hal findNode: $c) hNumber equals: 2.
	self assert: (hal findNode: $v) hNumber equals: 3.
	self assert: (hal findNode: $d) hNumber equals: 4.
	self assert: (hal findNode: $z) hNumber equals: 5.
	self assert: (hal findNode: $b) hNumber equals: 6.
	hal showLevels