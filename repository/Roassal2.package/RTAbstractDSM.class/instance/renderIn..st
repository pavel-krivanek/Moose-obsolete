hooks
renderIn: aView
	self createElements.
	aView addAll: elements.
	self layoutElements: elements.
	self addLabelsIfNecessary.
	^ aView