hooks
renderIn: aView
	self createElements.
	aView addAll: sliderElements.
	self addDraggableInteractions.
	self addLabelsIfNecessary.
	