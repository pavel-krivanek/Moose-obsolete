public
element: anElement during: seconds
	| rect |
	element := anElement.
	rect := element encompassingRectangle.
	side := (rect extent x max: rect extent y) * 1.5.
	shapes := shape elementsOn: (1 to: numberOfShapes).
	
	anElement view addAll: shapes.
	shapes do: [ :e | 
		e extent: 0@0.
		e translateTo: rect center.
		e pushBack].
	animatedValue := TRVIAnimatedValue new
		evaluator: [ :t | t ];
		timer: (TRVITimer new cycleLength: seconds);
		yourself.
	
	self after: [ shapes do: #remove ].