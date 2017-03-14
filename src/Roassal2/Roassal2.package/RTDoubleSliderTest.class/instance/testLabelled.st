tests
testLabelled
	| slider |
	
	slider := RTDoubleSlider new.
	self assert: slider isLabelled equals: false.
	slider labeled.
	self assert: slider isLabelled equals: true.