tests
testMin
	| slider |
	
	slider := RTDoubleSlider new.
	self assert: slider min equals: 0.0.
	slider min: 0.7.
	self assert: slider min equals: 0.7.