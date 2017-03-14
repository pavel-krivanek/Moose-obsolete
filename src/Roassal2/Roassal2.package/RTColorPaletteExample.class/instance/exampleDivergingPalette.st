sources
exampleDivergingPalette
	| v |
	v := RTView new.
	v @ RTDraggableView.
	RTCPDiverging new viewOn: v.
	^ v