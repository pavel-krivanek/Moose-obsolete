private
adapt: aComposableModel

	super adapt: aComposableModel.
	
	view := widget.
	canvas := view setUpCanvas.
	widget := canvas buildMorph.
	widget
		setProperty: #model toValue: self;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	
	self basicApplyScript
	