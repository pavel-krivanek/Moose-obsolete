sources
exampleParis
	<gtExample>
	<noTest>
	| v map e paris |
	v := RTView new.
	map := RTOSM new
		onload: [ self inform: 'Load done'].
	e := map element.
	v add: e.

	paris := 48.8567 @ 2.3508.
	
	v canvas camera translateTo: (map latLonToRoassal: paris).
	v canvas camera noInitializationWhenOpen.
	v canvas camera scale: 20.
	v @ RTDraggableView @ RTZoomableView.
	RTEmptyViewContext setOnView: v.
	^ v