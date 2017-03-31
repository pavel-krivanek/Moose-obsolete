tests
testUseIntegerLabel
	| slider |
	
	slider := RTDoubleSlider new.
	self assert: slider usingIntegerLabel equals: false.
	slider useIntegerLabel.
	self assert: slider usingIntegerLabel equals: true.