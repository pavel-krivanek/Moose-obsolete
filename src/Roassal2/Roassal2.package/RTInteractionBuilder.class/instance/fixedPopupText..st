public - events-registering
fixedPopupText: aBlock
	self removeInteractionOfType: RTAbstractPopup.
	self addExclusiveInteraction: (RTFixedPopup new text: aBlock)