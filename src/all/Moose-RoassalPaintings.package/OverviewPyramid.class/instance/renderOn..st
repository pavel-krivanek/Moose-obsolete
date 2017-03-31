rendering
renderOn: mondrian
	| s |
	s := RTCompositeShape new.
	s add: (RTBox new 
		height: 20; 
		width: 60;
		color: [:e | e backgroundColor]).
	s add: (RTLabel new 
		text: [:e | e label];
		color: [:e | e textColor]).
		
	mondrian shape shapeInitializer: [ :aShape | ]; shape: s.
	mondrian nodes: rectangles.
	mondrian layout grid gapSize: 0; lineItemsCount: [ 9 ].
	
	