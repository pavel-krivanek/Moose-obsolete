removing context
testRemovingContext02
	RTInteractiveViewContext setOnView: view.
	prez useContextToInitialize: view.
	self assert: view announcer numberOfSubscriptions equals: 1.
	"self assert: (view hasInteraction: RTSelectableElementContextInteraction)."
	self assert: (view hasInteraction: RTResizeableViewContextInteraction).

	RTEmptyViewContext setOnView: view.
	prez useContextToInitialize: view.
	self assert: view announcer numberOfSubscriptions equals: 0.

	RTInteractiveViewContext setOnView: view.
	prez useContextToInitialize: view.
	self assert: view announcer numberOfSubscriptions equals: 1.
