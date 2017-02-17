as yet unclassified
createAndShowPopupFor: element event: event
	| popup |
	self removeLastPopup.
	popup := TRPlatform current
		createPopupFor: element view canvas morph
		in: event position
		background: (background rtValue: element)
	 	string: (text rtValue: element model) asString.
	self lastPopup: popup