tests
testBasic
	| gridView |
	gridView := RTGridView new.
	self assert: gridView gridSize equals: RTGridView defaultGridSize.
	self assert: gridView color equals: RTGridView defaultColor.