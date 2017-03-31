public
background: aColor group: aTwoArgBlock
	"aTwoArgBlock has to follow the pattern [ :group :element |  ... ]
	group is an empty group. You need to add what you want to be displayed in the popup. el is the element on which the mouse is above."
	
	self group: [ :group :el |
		| backgroundElement |
		backgroundElement := self createBackgroundElement: aColor.
		group add: backgroundElement.
		aTwoArgBlock value: group value: el.
		RTNest new centerOn: backgroundElement elements: (group copyWithout: backgroundElement).
		]