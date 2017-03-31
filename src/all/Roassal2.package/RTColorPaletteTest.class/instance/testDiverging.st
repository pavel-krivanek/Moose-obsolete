tests
testDiverging
	| palette c c2 |
	palette := RTColorPalette diverging.

	self assert: (palette colors: 11 scheme: 'RdGy') size equals: 11.
	c := (palette colors: 11 scheme: 'RdGy') first.
	c2 := Color colorFrom: '#67001F'.
	self assert: (c closeTo: c2).
	
	self assert: (palette colors: 6 scheme: 'RdGy') size equals: 6.
	c := (palette colors: 6 scheme: 'RdGy') second.
	c2 := Color colorFrom: '#EF8A62'.
	c assert: (c closeTo: c2)
	