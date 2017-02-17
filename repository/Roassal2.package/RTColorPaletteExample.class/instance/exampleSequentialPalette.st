sources
exampleSequentialPalette
	| v |
	v := RTView new.
	v @ RTDraggableView.
	RTCPSequential new viewOn: v.
	^ v