rendering
actOnPresentationUpdate: ann
	| aView canvas |
	aView := ann presentation newViewBlock value.
	ann presentation renderOn: aView.
	canvas := aView view setUpCanvas.
	myMorph 
		canvas: canvas;
		extent: canvas extent.
		