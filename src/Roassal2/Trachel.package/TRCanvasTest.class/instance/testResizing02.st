resizing
testResizing02

	| e |
	canvas when: TRResizeCanvasEvent do: [ :evt | e := evt ].
	canvas extent:  12 @ 12.
	self assert: e newExtent equals: 12 @ 12.
	self assert: e oldExtent equals: 500 @ 500.