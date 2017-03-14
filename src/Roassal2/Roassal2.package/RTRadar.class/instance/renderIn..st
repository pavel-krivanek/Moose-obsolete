hooks
renderIn: aView
	| box box2 lupa boundingBox sc |
	lupa := nil.
	sc := 1.
	aView addAnimation: (RTNopAnimation new
		waitFor: 0.5; repeat; blockToExecute: [ | ext |
			sc := view canvas focusOnCenterScaled.
			lupa first translateTo: view canvas extent /2.
			ext := targetView canvas encompassingRectangle extent.
			Transcript crShow: sc.
			lupa second translateTo: view canvas extent * 
				(targetView canvas camera position ) / ext.
			lupa updateShape. ] ).
	view canvas privateShapes: targetView canvas privateShapes.
	box := RTBox new
		width: [ view canvas extent x ];
		height: [ view canvas extent y ];
		color: Color transparent.
	box2 := RTBox new
		width: [ targetView canvas extent x * sc];
		height: [ targetView canvas extent y * sc ];
		color: Color transparent;
		borderColor: Color blue.
		
	lupa := RTGroup new.
	lupa add: box element.
	lupa add: box2 element.
	lupa do: [ :e| 	view canvas addFixedShape: e trachelShape ].

	
	