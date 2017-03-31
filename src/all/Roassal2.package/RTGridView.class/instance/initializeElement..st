hooks
initializeElement: aView
	aView attributeAt: self className put: self.
	self addGridShapeTo: aView canvas.
	self addCenterMarkerTo: aView canvas.
	self registerMovementEvents: aView canvas