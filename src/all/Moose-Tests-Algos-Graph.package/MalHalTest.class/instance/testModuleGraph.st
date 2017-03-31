tests
testModuleGraph
	(MalGraphFixture moduleGraph: hal) run.
	self assert: (hal findNode: 'v1') hNumber equals: 0.
	self assert: (hal findNode: 'v2') hNumber equals: 1.
	self assert: (hal findNode: 'v3') hNumber equals: 1.
	self assert: (hal findNode: 'v4') hNumber equals: 1.
	self assert: (hal findNode: 'v5') hNumber equals: 2.
	self assert: (hal findNode: 'v6') hNumber equals: 3.
	self assert: (hal findNode: 'v7') hNumber equals: 3.
	self assert: (hal findNode: 'v8') hNumber equals: 4.
	self assert: (hal findNode: 'v9') hNumber equals: 5.
	self assert: (hal findNode: 'v10') hNumber equals: 6.
	self assert: (hal findNode: 'v11') hNumber equals: 6.
	hal showLevels