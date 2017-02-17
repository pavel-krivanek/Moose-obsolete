tests
testLCOM2
	self assert: classA lcom2 equals: 0.
	self assert: classB lcom2 equals: 0.
	self assert: classB1 lcom2 equals: 1/6.
	self assert: classB2 lcom2 equals: 1/6.
	self assert: classC lcom2 equals: 1/3.
	self assert: classD lcom2 equals: 0.
	self assert: classE lcom2 equals: 0.
	self assert: classF lcom2 equals: 1.
	self assert: classF1 lcom2 equals: 1.
	self assert: classG lcom3 equals: 0