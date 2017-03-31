sources
exampleQualitativePalette
	| v |
	v := RTView new.
	v @ RTDraggableView.
	RTCPQualitative new viewOn: v.
	^ v