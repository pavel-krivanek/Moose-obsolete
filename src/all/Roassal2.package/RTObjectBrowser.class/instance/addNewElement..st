private
addNewElement: anElement
	| pos anime |
	pos := self positionFor: anElement.
	anElement key first translateTo: pos.
	view addAll: anElement key.
	view addAll: anElement value.
	anime := RTAddElementAnimation new.
	anime shape circle color: Color transparent; borderColor: Color blue.
	anime element: anElement key during: 0.75.
	view canvas focusOnCenterScaled.
	view addAnimation: anime.