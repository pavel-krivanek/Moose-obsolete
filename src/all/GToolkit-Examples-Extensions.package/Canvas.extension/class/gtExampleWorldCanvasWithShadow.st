*GToolkit-Examples-Extensions
gtExampleWorldCanvasWithShadow
	<gtExample>
	<label: 'Canvas: World+Shadow'>
	
	^ (ShadowDrawingCanvas on: Canvas new)
		shadowColor: (Color black alpha: 0.5)