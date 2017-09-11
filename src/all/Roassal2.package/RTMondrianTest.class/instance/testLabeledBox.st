tests - nodes
testLabeledBox
	b shape labeledBox.
	b node: 42.
	b layout flow.
	b build.
	
	self assert: b view canvas numberOfShapes equals: 2.