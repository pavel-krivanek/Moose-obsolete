tests
testCallback
	| slider block t |
	
	slider := RTDoubleSlider new.
	slider build.
	t := 0.
	block := [ :arg1 :arg2 | t := t+1 ].

	slider callback: block.
	self assert: slider callback equals: block.
	slider eventForCursorMin: true.
	self assert: t equals: 1.
	slider eventForCursorMax: true.
	self assert: t equals: 2.
	slider eventForLineCursor.
	self assert: t equals: 3.