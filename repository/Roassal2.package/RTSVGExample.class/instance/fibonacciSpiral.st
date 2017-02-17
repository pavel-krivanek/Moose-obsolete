basic
fibonacciSpiral
 	<gtExample>
	<iconSelectorBase64: #fibonacciSpiralIcon>
	
	| view elem |
	view := RTView new.
	elem := (RTSVGPath new
		path: (RTSVGPath 
			goldenSpiral: 10 
			start: 0@0
			side: 100
			direction: 1@ 1
			type: true);
		fillColor: Color random;
		scale: 2;
		borderWidth: 0.5) element.
	elem @ RTDraggable.
	view add: elem.

	elem := (RTSVGPath new
		path: (RTSVGPath 
			goldenSpiral: 10 
			start: 0@0
			side: 100
			direction: -1@ 1
			type: true);
		fillColor: Color random;
		scale: 2;
		borderWidth: 0.5) element.
	elem @ RTDraggable.
	view add: elem.

	elem := (RTSVGPath new
		path: (RTSVGPath 
			goldenSpiral: 10 
			start: 0@0
			side: 100
			direction: -1@ -1
			type: true);
		fillColor: Color random;
		scale: 2;
		borderWidth: 0.5) element.
	elem @ RTDraggable.
	view add: elem.

	elem := (RTSVGPath new
		path: (RTSVGPath 
			goldenSpiral: 10 
			start: 0@0
			side: 100
			direction: 1@ -1
			type: true);
		fillColor: Color random;
		scale: 2;
		borderWidth: 0.5) element.
	elem @ RTDraggable.
	view add: elem.

	view elements do: [ :e| 
		view addAnimation: (RTRotationMove angle: 300 during: 20 on: e)
		 ].

	^ view
	
	