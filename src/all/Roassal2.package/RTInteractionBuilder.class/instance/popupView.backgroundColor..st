public - events-registering
popupView: aTwoArgBlock backgroundColor: aBackgroundColor
	"aTwoArgBlock has to follow the pattern [ :group :element |  ... ]
	group is an empty group. You need to add what you want to be displayed in the popup. el is the element on which the mouse is above."
	self addExclusiveInteraction: (RTPopup new background: aBackgroundColor group: aTwoArgBlock)