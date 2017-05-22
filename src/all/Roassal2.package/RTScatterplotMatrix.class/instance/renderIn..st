hooks
renderIn: aView
	self renderMatrix: aView.
	self createAxisIfNecessary: aView.
	self addBrushInteractionIfNecessary: aView.