tests
testDual
	view := RTView new.
	el1 := RTBox element.
	el2 := RTBox element.
	edge := RTLine edgeFrom: el1 to: el2.
	view add: el1.
	view add: el2.
	view add: edge.
	RTDualAttachPoint  on: view elements attachFrom: RTBorderAttachPoint instance.
	self assert: edge shape attachPoint class equals: RTDualAttachPoint 
