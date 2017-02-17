hooks
renderIn: aView
	view := aView.
	aView addAll: elements.
	edges
		view: aView;
		elements: elements;
		connectToAll: childrenBlock.
	layoutBuilder setUpElements: elements.
	self createBezierIfNecessary: aView.
	
	center := elements encompassingRectangle center.
	(elements select: [ :e | (childrenBlock rtValue: e model) isEmpty ]) 
		do: [ :e | self createLabelFor: e view: aView ].
	
	self createSliderIfNecessary: aView.
