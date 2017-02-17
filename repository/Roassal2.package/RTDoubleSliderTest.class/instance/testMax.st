tests
testMax
	| slider |
	
	slider := RTDoubleSlider new.
	self assert: slider max equals: 1.0.
	slider max: 0.7.
	self assert: slider max equals: 0.7.
	