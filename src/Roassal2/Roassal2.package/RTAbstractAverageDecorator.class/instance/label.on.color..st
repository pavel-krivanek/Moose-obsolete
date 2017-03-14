utility
label: aString on: position color: aColor
	| e |
	e := super label: aString on: position color: aColor.
	shapes add: e.
	^ e