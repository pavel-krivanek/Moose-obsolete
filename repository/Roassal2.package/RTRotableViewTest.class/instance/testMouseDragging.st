tests
testMouseDragging

	| evt |
	evt := TRMouseDragging new step: 50 @ 50.
	self assert: evt position equals: 0 @ 0