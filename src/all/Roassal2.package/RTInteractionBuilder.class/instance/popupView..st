public - events-registering
popupView: aTwoArgBlock
	"aTwoArgBlock has to follow the pattern [ :group :element |  ... ]
	group is an empty group. You need to add what you want to be displayed in the popup. el is the element on which the mouse is above."
	^ self popupView: aTwoArgBlock backgroundColor: (Color blue alpha: 0.6)