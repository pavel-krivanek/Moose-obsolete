tests
testBasic

	| c |
	c := RTCompoundElement new.
	self assert: c children size equals: 0.
	self assert: c children class equals: RTGroup.
	 