tests
testBasic

	event := TRMouseDragging new step: 50 @ 50.
	v announce: event.
	
	self assert: event canvas equals: v canvas.
	
	r dragViewWithEvent: event.
	self assert: (v canvas camera position closeTo:  -50 @ -50)