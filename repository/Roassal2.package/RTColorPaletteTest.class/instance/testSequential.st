tests
testSequential
	| palette c1 c2 |
	palette := RTColorPalette sequential.

	self assert: (palette colors: 3 scheme: 'Purples') size equals: 3.
	c1 := (palette colors: 3 scheme: 'Purples') first.
	c2 := Color colorFrom: '#EFEDF5'.
	self assert: (c1 closeTo: c2).
	
	c1 := (palette colors: 3 scheme: 'Purples') second.
	c2 := Color colorFrom: '#BCBDDC'.
	self assert: (c1 closeTo: c2).
	
	c1 := (palette colors: 3 scheme: 'Purples') third.
	c2 := Color colorFrom: '#756BB1'.
	self assert: (c1 closeTo: c2).
