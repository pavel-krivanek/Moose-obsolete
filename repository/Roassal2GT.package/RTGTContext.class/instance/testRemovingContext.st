removing context
testRemovingContext
	| c |
	self assert: view announcer numberOfSubscriptions equals: 0.
	RTInteractiveViewContext setOnView: view.
	self assert: view announcer numberOfSubscriptions equals: 0.
	prez useContextToInitialize: view.
	self assert: view announcer numberOfSubscriptions equals: 1.
	
	c := prez getContextFor: view.
	self assert: c class equals: RTInteractiveViewContext.
	c removeFromView.
	self assert: view announcer numberOfSubscriptions equals: 0.