accessing
layout: aForceBasedLayout
	"Set an instance of the class RTForceBasedLayout. 
	This is useful in case the layout is initialized from outside"
	self layoutWithoutPreparing: aForceBasedLayout.
	view ifNotNil: 
		[ self prepareLayoutFor: view ]