private
addNewElement: anElement
	| pos anime |
	pos := self positionFor: anElement.
	anElement first translateTo: pos.
	view addAll: anElement.
	anime := RTAddElementAnimation new.
	anime shape circle color: Color transparent; borderColor: Color blue.
	anime element: anElement during: 1.
	view canvas focusOnCenterScaled.
	view addAnimation: anime.